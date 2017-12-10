#!/usr/bin/perl;
use 5.012;
use strict;
use warnings;

use FindBin qw($Bin);
use Cwd qw(abs_path);
use XML::Simple;
use Template;

use Data::Dumper 'Dumper';
$Data::Dumper::Indent=0;
$Data::Dumper::Purity=1;
$Data::Dumper::Terse=1;
$Data::Dumper::Pair='=>';

our %TMPL_CFG=(
  INCLUDE_PATH => abs_path($Bin."/../etc/template"),
  OUTPUT_PATH  => abs_path($Bin."/../lib"),
);

# This script builds out Number::MuPhone::Data:
# - country lookup
# - international dialing code lookup
# - NANP numbers (anything that starts with +!
#
# Also, it builds out the various country parser modules, based on the data in Google's libphonenumber
# either from templates in ./etc/lib/Number/MuPhone/Parser, or from lib/Number/MuPhone/Parser/_template.pm

my $etc_path = abs_path("$Bin/../etc");
my $src_xml_path = abs_path("$Bin/../etc/PhoneNumberMetadata.xml");
my $data_pm_path = abs_path("$Bin/../lib/Number/MuPhone/Data.pm");

my ($xml_data);
{
  local $/;
  open(my $in, '<', $src_xml_path) || die $!;
  $xml_data = <$in>;
  close($in);
}

# first grab anything that isn't US/CA that starts with a 1
my @matches = $xml_data =~ /id="([^"]+)" countryCode="1" leadingDigits="([^"]+)"/g;
my $nanp_lookup;
while (@matches) {
  my $country_id     = shift @matches;
  my $leading_digits = shift @matches;
  my @leading_digits = ();
  if ($leading_digits =~ /\|/) {
    @leading_digits = split /\|/, $leading_digits;
  }
  elsif ( $leading_digits =~ /(\d)\[(\d+)\](\d+)/ ) {
    my ($first,$middle,$last) = ($1,$2,$3);
    @leading_digits = map { "$first$_$last" } split //, $middle;
  }
  else {
    @leading_digits = ($leading_digits);
  }

  for (@leading_digits) {
    $nanp_lookup->{$_} = $country_id;
  }
}

# add in Canada to NANP lookup
my $ca_number_regex;
if ($xml_data =~ m|<!-- Canada -->.*?<fixedLine>.*?<nationalNumberPattern>\s*(.*?)\s+</nationalNumberPattern>|s) {
  my $regex = $1;
  $regex =~ s/\s//g;
  $ca_number_regex = qr/^$regex$/;
  
  for my $num ('200'..'999') {
    my $test_num = $num.'2222222';
    if ( $test_num =~ $ca_number_regex ) {
      $nanp_lookup->{$num} = 'CA';
    }
  }
}
else {
  die "Can't find Canadian number regex";
}

# add in USA to NANP lookup
my $us_number_regex;
if ($xml_data =~ m|<!-- United States -->.*?<fixedLine>.*?<nationalNumberPattern>\s*(.*?)\s+</nationalNumberPattern>|s) {
  my $regex = $1;
  $regex =~ s/\s//g;
  $us_number_regex = qr/^$regex$/;
  
  for my $num ('200'..'999') {
    my $test_num = $num.'2222222';
    if ( $test_num =~ $us_number_regex ) {
      $nanp_lookup->{$num} = 'US';
    }
  }
}
else {
  die "Can't find US number regex";
}

my $data_pm_data = {};
$data_pm_data->{nanp_lookup} = Dumper($nanp_lookup);


# Have to get country names from source XML - they're only in the comments!
my $countries = { reverse $xml_data =~ /<!-- ([^>]*) -->\s*(?:<!--[^>]+-->\s*){0,}\S*<territory id="([^"]{2})"/gs };
$data_pm_data->{country_lookup} = Dumper($countries);

# read in XML file to build out country files
my $all_data;
{
  # the libphonenumber XML file throws id warnings because of special cases (id 001)
  # we don't cater for these special numbers
  no warnings;
  $all_data = XMLin($src_xml_path);
  delete $all_data->{territories}->{territory}->{'001'};
}

my $international_dial_codes;
foreach my $territory ( sort keys %{ $all_data->{territories}->{territory} } ) {
  my $data = $all_data->{territories}->{territory}->{$territory};
  $data->{TerritoryName} = $countries->{$territory} or die "Bad territory: $territory";

  my $country_code = $data->{countryCode};
  push @{ $international_dial_codes->{$country_code} }, $territory;

  # clean up number pattern regexes
  foreach my $key (keys %$data) {
    ref $data->{$key} eq 'HASH'
      and $data->{$key}->{nationalNumberPattern}
      and $data->{$key}->{nationalNumberPattern} =~ s/\s//g;
  }

  # clean up number format regexes
  $data->{availableFormats}->{numberFormat} ||= [];
  if (ref $data->{availableFormats}->{numberFormat} eq 'HASH') {
    $data->{availableFormats}->{numberFormat} = [ $data->{availableFormats}->{numberFormat} ];
  }

  foreach my $format ( @{ $data->{availableFormats}->{numberFormat} } ) {
    # we don't care about leadingDigits except for last entry
    # (can't think of a Perl use case for this that wouldn't be easier in Javascript
    if ( ref $format->{leadingDigits} eq 'ARRAY' ) {
      $format->{leadingDigits} = $format->{leadingDigits}->[-1];
    }
    # clean it up if it's a regex  
    $format->{leadingDigits} ||= '';
    $format->{leadingDigits} =~ s/\s//g;
  }
  
  $data->{CountryCode} = $territory;

  my $country_template_data = { 
    namespace   => "Number::MuPhone::Parser::$territory",
    config_hash => Dumper($data),
  };

  my $template_path = "lib/Number/MuPhone/Parser/_template.pm";
  my $this_path = "lib/Number/MuPhone/Parser/$territory.pm";
  if (-f "$TMPL_CFG{INCLUDE_PATH}/$this_path") {
    $template_path = $this_path;
  }

  my $tt = Template->new(\%TMPL_CFG)
    or die Template->error();
  $tt->process($template_path,$country_template_data,"Number/MuPhone/Parser/$territory.pm")
    or die $tt->error;
}

# create the Number::MuPhone::Data file
# NANP needs to be explicitly set
$international_dial_codes->{1}=['NANP'];
$data_pm_data->{idd_codes} = Dumper($international_dial_codes); 

#  populate $data_pm_data in the Number::MuPhone::Data module from template
{
  my $tt = Template->new(\%TMPL_CFG)
    or die Template->error();
  $tt->process('lib/Number/MuPhone/Data.pm',$data_pm_data,"Number/MuPhone/Data.pm")
    or die $tt->error;
}
exit(0);
