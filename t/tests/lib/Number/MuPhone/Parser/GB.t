use 5.012;
use Test::More;

use Number::MuPhone::Parser::GB;

########################################
# test various valid and invalid GB numbers
########################################

for my $number('+44 1929 552619','01929 552619') {
  diag "Processing $number";
  my $num = Number::MuPhone::Parser::GB->new({
    number => $number,
  });
  isa_ok($num,'Number::MuPhone::Parser::GB');
  ok( ! $num->error, 'No error' );

  is( $num->country,                    'GB'              ,'country' );
  is( $num->country_code,               '44'              ,'country_code');
  is( $num->country_name,               'United Kingdom'  ,'country_name');
  is( $num->_cleaned_number,            '1929552619'      ,'_cleaned_number');
  is( $num->_international_dial_prefix, '00'              ,'international_dial_prefix');
  is( $num->_national_dial_prefix,      '0'               ,'national_prefix');
  is( $num->_formatted_number,          '1929 552619'     ,'format');
  is( $num->national_display,           '01929 552619'    ,'national_display');
  is( $num->_national_dial,             '01929552619'     ,'_national_dial');
  is( $num->dial_from($num),            '01929552619'     ,'dial_from same country');
  is( $num->international_display ,     '+44 1929 552619' ,'international_display');
  is( $num->international_dial,         '+441929552619'   ,'international_dial');
  is( $num->E164,                       '+441929552619'   ,'E164');
}

for my $number('+44 20 1234 1234','020 1234 1234') {
  diag "Processing $number";
  my $num = Number::MuPhone::Parser::GB->new({
    number => $number,
  });
  isa_ok($num,'Number::MuPhone::Parser::GB');
  ok( ! $num->error, 'No error' );

  is( $num->_cleaned_number,        '2012341234'       ,'_cleaned_number');
  is( $num->_formatted_number,      '20 1234 1234'     ,'format');
  is( $num->national_display,       '020 1234 1234'    ,'national_display');
  is( $num->dial_from($num),        '02012341234'      ,'national_dial');
  is( $num->international_display,  '+44 20 1234 1234' ,'international_display');
  is( $num->international_dial,     '+442012341234'    ,'international_dial');
}

diag "Processing other numbers (light)";

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0911 1111111'});
  is( $num->_formatted_number, '911 111 1111', '09XX XXX XXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0801 1111111'});
  is( $num->_formatted_number, '801 111 1111', '08XX XXXXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0800 211111'});
  is( $num->_formatted_number, '800 211111', '0800 2XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '07111 111111'});
  is( $num->_formatted_number, '7111 111111', '07XXX XXXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0500 111111'});
  is( $num->_formatted_number, '500 111111', '0500 XXXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0311 111 1111'});
  is( $num->_formatted_number, '311 111 1111', '03XX XXX XXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '019467 11111'});
  is( $num->_formatted_number, '19467 11111', '019467 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '017687 11111'});
  is( $num->_formatted_number, '17687 11111', '017687 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '017684 11111'});
  is( $num->_formatted_number, '17684 11111', '017684 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '017683 11111'});
  is( $num->_formatted_number, '17683 11111', '017683 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '016977 11111'});
  is( $num->_formatted_number, '16977 11111', '016977 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '016977 1111'});
  is( $num->_formatted_number, '16977 1111', '016977 XXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '016974 11111'});
  is( $num->_formatted_number, '16974 11111', '016974 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '016973 11111'});
  is( $num->_formatted_number, '16973 11111', '016973 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '015396 11111'});
  is( $num->_formatted_number, '15396 11111', '015396 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '015395 11111'});
  is( $num->_formatted_number, '15395 11111', '015395 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '015394 11111'});
  is( $num->_formatted_number, '15394 11111', '015394 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '015242 11111'});
  is( $num->_formatted_number, '15242 11111', '015242 XXXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0131 111 1111'});
  is( $num->_formatted_number, '131 111 1111', '0131 XXX XXXX' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '0113 111 1111'});
  is( $num->_formatted_number, '113 111 1111', '0113 XXX XXXX' );
  is( $num->extension, '', 'no extension' );
}

{
  my $num = Number::MuPhone::Parser::GB->new({ number => '01929 552619 x 1234'});
  is( $num->_formatted_number,     '1929 552619',              '01XXX XXXXXX' );
  is( $num->extension,             '1234',                     'extension' );
  is( $num->international_display, '+44 1929 552619 ext 1234', 'international_display w extension' );
  is( $num->E164,                  '+441929552619;ext=1234',   'E164');
  is( $num->E164_no_ext,           '+441929552619',            'E164 no extension');
  is( $num->international_dial,    '+441929552619,1234',       'International dial');
}

diag "Bad numbers";
{
  my $bad_num = Number::MuPhone::Parser::GB->new({
    number => '01929 5552619',
  });
  is( $bad_num->error, 'Invalid Number', 'Is bad num');
}

{
  # no numbers begin 04
  my $bad_num = Number::MuPhone::Parser::GB->new({
    number => '04929 5552619',
  });
  ok( $bad_num->error, 'Is bad num');
}

{
  # no numbers begin 06
  my $bad_num = Number::MuPhone::Parser::GB->new({
    number => '06929 5552619',
  });
  ok( $bad_num->error, 'Is bad num');
}

done_testing();
