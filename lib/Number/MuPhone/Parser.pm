package Number::MuPhone::Parser;
use 5.012;
use Moo;
use Number::MuPhone::Config;
use Data::Dumper 'Dumper';

# base class for number parsers
# This should be enough for most countries, but you have flexibility 
# to overload in individual country parsers as needed

# user shouldn't be calling the parser module direct
# if they do, ensure all args exist
# assume they are valid - user error if not ;-)

########################################
# attributes
# - 'country' and 'number' are required at instantiation
# - and only 2 expected to be supplied
########################################

# loaded from file or use default
has global_config => (
  is => 'ro',
  default => sub {
    return $Number::MuPhone::Config::config;
  }
);

# must be overloaded in country parser
has config => (
  is => 'ro',
  default => sub {
    return { error => "Config needs overloading from the country's parser" };
  }
);

# store error message (silently ignored under Number::Phone)
# if parse has no config, default error set
has error => (
  is => 'rw', 
  default => '',
);

# originally supplied raw phone number, with possible formatting.
has number => ( is => 'ro',);

# 2 upper case char country code (except for catchall NANP)
has country => (
  is => 'ro',
  lazy => 1,
  default => sub {
    shift->config->{CountryCode};
  }
);

# international country code - numeric country code
has country_code => (
  is => 'ro',
  lazy => 1,
  default => sub {
    shift->config->{countryCode};
  }
);

# created in BUILD from 'number'
has _cleaned_number => (
  is => 'rw',
);

# prefix you dial when dialing *out* of the country to an international number
has _international_dial_prefix => (
  is => 'ro',
  lazy => 1,
  default => sub {
    shift->config->{internationalPrefix};
  },
);

# prefix you dial when dialing the _cleaned_number within the country
has _national_dial_prefix => (
  is => 'ro',
  lazy => 1,
  default => sub {
    shift->config->{nationalPrefix};
  },
);

# created in BUILD from config formats
has _formatted_number => ( is => 'rw' );
sub _format_number {
  my $self = shift;
  my $cleaned_number = $self->_cleaned_number||'';

  my $formatted_number = $cleaned_number;
  my $formatted;

  # no formatting rules? Just return the number - TODO examine if this is right
  return $cleaned_number unless @{ $self->config->{availableFormats}->{numberFormat} };

  FORMAT: foreach my $format_hash (@{ $self->config->{availableFormats}->{numberFormat} }) {

    # not all countries have leading digit mappings
    if (my $leading_digits = $format_hash->{leadingDigits}) {
      next FORMAT unless ( $cleaned_number =~ /^(?:$leading_digits)/ );
    }

    my $regex  = $format_hash->{pattern};
    next FORMAT unless ( $cleaned_number =~ /^(?:$regex)$/ );

    my $format = $format_hash->{format};

    my $regex_statement = "\$formatted = \$formatted_number =~ s/$regex/$format/;";
    eval $regex_statement;
    if ($@) {
      $self->error("Can't format number($cleaned_number) with regex($regex_statement): $@");
      return undef;
    }
    last FORMAT;
  }

  if ($formatted) {
    return $formatted_number;
  }
  else {
    $self->error("Invalid Number");
    return undef;
  }
}

# common name for the country
# - retrieve from subclass config
has 'country_name' => (
  is => 'ro',
  lazy => 1,
  default => sub {
    shift->config->{TerritoryName};
  },
);

# optional extension
# - determined from number at instantiation
has extension => ( is => 'rw', default => '' );

# "standard" way to display the number in International Format
# E.123 format
has international_display => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    return '+'.$self->country_code.' '.$self->_formatted_number.$self->_extension_display;
  }
);

# dial number when you're in the country
# this default should work for most countries
has national_dial => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    return $self->_national_dial_prefix.$self->_cleaned_number.$self->_extension_dial;
  }
);

# return number formatted in E164 format, including extension
# https://en.wikipedia.org/wiki/E.164
has E164 => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    my $ext = $self->extension
              ? ";ext=".$self->extension
              : '';
    return $self->E164_no_ext.$ext;
  }
);

# return number formatted in E164 format
# but without the extension
has E164_no_ext => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    return '+'.$self->country_code.$self->_cleaned_number;
  }
);

# how do you dial the number when out of the country
# just an alias for E.164 format with (pause) extension added
sub international_dial { 
  my $self = shift;
  return $self->E164_no_ext.$self->_extension_dial;
}


# How you want to store the number (say, in the DB)
# defaults to +C N[ xE] (where C=Country code, N=number and E is optional extension)
# TODO
has storage_formatted_number => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    my $num = '+'.$self->country_code.' '.$self->_cleaned_number;
    $self->extension
      and $num .= ' x'.$self->extension;
    return $num;
  }
);

# shortcut
# TODO
sub display {
  my $self = shift;
  return $self->display_from( $self );
}

# shortcut 
# TODO
sub dial {
  my $self = shift;
  return $self->dial_from( $self );
}

# return formatted number in national or international format, depending on where
# the 'from' number (arg sent) is located
# TODO
sub display_from {
  my ($self,$str) = @_;
  my $from = $self->_get_obj_from($str);
  if ( $from->country_code eq $self->country_code ) {
    return $self->national_display;
  }
  else {
    # (DIAL PREFIX) (COUNTRY CODE) (FORMATTED NUMBER) [ (EXTENSION) ]
    return $from->_international_dial_prefix.' '.$self->country_code.' '
          .$self->_formatted_number.$from->_extension_display;
  }
}

# return dial number in national or international format, depending on where
# the 'for' number (arg sent) is located
# TODO
sub dial_from {
  my ($self,$str) = @_;
  my $obj = $self->_get_obj_from($str);
  if ( $obj->country_code eq $self->country_code ) {
    return $self->national_dial;
  }
  else {
    return $obj->_international_dial_prefix.$self->country_code.$self->_cleaned_number;
  }
}

sub BUILD {
# TODO
  my $self = shift;

  $self->number  or $self->error("'number' is required")  and return;
  $self->country or $self->error("'country' is required")  and return;

  # all of these actions can be overloaded on a per country basis
  # - _parse_number_and_extension()
  # - _parse_number
  # - _format_number

  # get raw number and extension from string
  # (may still contain punctuation)
  my ($rawnum,$extension) = $self->_parse_number_and_extension;
  if ($extension) {
    $extension =~ s/\D//g;
    $self->extension($extension);
  }

  # clean up to international format (minus country code) for base usage
  $self->_cleaned_number( $self->_parse_number($rawnum) );

  # local error checking and display formatting
  # fits known number patterns and reformats number as needed
  $self->_formatted_number( $self->_format_number );
};

# text to display before extension
# TODO
has _extension_text => ( is => 'rw', default => 'ext ' );

# How do you display the number when you're in the country?
# this default should work for most countries
# TODO
has national_display => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $self = shift;
    my $dial_prefix = $self->national_prefix_optional_when_formatting
                      ? ''
                      : $self->_national_dial_prefix;

    return $dial_prefix.$self->_formatted_number.$self->_extension_display;
  }
);

# some countries (eg US) don't require the national prefix in displayed numbers
# others (eg GB), do
has national_prefix_optional_when_formatting => (
  is      => 'ro',
  lazy    => 1,
  default => sub {
    my $optional_format = shift->config->{nationalPrefixOptionalWhenFormatting};
    return (defined $optional_format and $optional_format eq 'true')
    ? 1
    : 0;
  },
);


# sane default in English - overload as needed
# MUST return the parsed out phone number and extension
# can contain extraneous characters - this is basically just splitting
# the number from the extension
# TODO - add country specific text for split to the template for each country
# also add language specific data files (Number::MuPhone::Data::Language::English, say)
# so we can set sane defaults for most countries
sub _parse_number_and_extension {
  my $self = shift;
  # note - extension / ext / x must be in that order for highest chance of valid match
  my ($num,$ext) = split /(?:\*|extension|ext|x)/, $self->number;
  $ext||='';
  return ($num,$ext);
}

# sane default - overload in country class if needed
# this should work for most numbers
# TODO
sub _parse_number {
  my ($self,$rawnum) = @_;

  my $country_code          = $self->country_code;
  my $_national_dial_prefix = $self->_national_dial_prefix;   

  $rawnum =~ s/[^\+0-9]//g;                   # remove non-digits (except +)

  if (   $rawnum =~ s/^\+$country_code//                    # remove country_code; or
      or $rawnum =~ s/^$_national_dial_prefix//             # remove national dial prefix; or
      or $self->national_prefix_optional_when_formatting    # national dial prefix is optional
     ) {
    return $rawnum;
  }
  else {
    return undef;
  }

}

# for flexibility, we can parse out the country from
# - another Number::MuPhone::Parser::* object
# - a phone number string
#   - return local country if we can't parse this
# TODO
# TODO
sub _get_obj_from {
  my ($self,$str) = @_;

  # another parser object
  my $ref = ref $str;
  if ( $ref =~ /^Number::MuPhone::Parser::/ ) {
    return $str;
  }
  # assume it's a country code
  elsif ( $str =~ /^(?:[A-Z]{2}|[A-Z]{4})$/ ) {
    return Number::MuPhone->new({country => $str});
  }
  # assume it's a raw phone number
  else {
    my $num = Number::MuPhone->new({ number => $str });
    if ( $num->error ) {
      # OK, so it wasn't a valid phone number, so let's display for local country as sane default
      return $self;
    }
    else {
      # we found a phone number, so return object
      return $num;
    }
  }
}

# TODO
sub _extension_display {
  my $self = shift;
  my $ext = 
  return $self->extension
         ? ' '.$self->_extension_text.$self->extension
         : '';
}

# TODO
sub _extension_dial {
  my $self = shift;
  my $pause = $self->global_config->{dialer}->{pause} || '';
  return $self->extension
         ? $pause.$self->extension
         : '';
}

1;

__END__

# TODO
=pod

=encoding UTF-8

=head1 NAME

Number::MuPhone::Parser

=head1 VERSION

version 0,01

=head1 DESCRIPTION

Base phone number parser class. Inherited by all parser classes

=head1 METHODS

=head2 display_from( $num | $num_obj | country )

This works out of the box for 90% of countries, but there are a few places 
where this may not work for some 'odd cases' - eg, dialing French territories from France.

=head2 display()

Alias for $num->display_from($num);

=head2 dial_from( $num | $num_obj | country )

This works out of the box for 90% of countries, but there are a few places 
where this may need overwriting - eg, dialing French territories from France.

=head2 dial()

Alias for $num->dial_from($num);


TODO - finish documentation soon :D


=head1 AUTHOR

Clive Holloway <clive.holloway@gmail.com>

Copyright (c) 2017-2018 Clive Holloway 

=cut
