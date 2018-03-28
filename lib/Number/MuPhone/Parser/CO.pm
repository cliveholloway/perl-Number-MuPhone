package Number::MuPhone::Parser::CO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'CO',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'carrierCodeFormattingRule'=>'$NP$CC $FG',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'pattern'=>'(\\d)(\\d{7})',
                                                'leadingDigits'=>'1(?:8[2-9]|9(?:09|[1-3])|[2-7])|[24-8]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'3',
                                                'format'=>'$1 $2',
                                                'carrierCodeFormattingRule'=>'$NP$CC $FG',
                                                'pattern'=>'(\\d{3})(\\d{7})'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3',
                                                'pattern'=>'(1)(\\d{3})(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'1(?:800|9(?:0[01]|4[78]))',
                                                'format'=>'$1-$2-$3'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Colombia',
  'nationalPrefixForParsing'=>'0([3579]|4(?:44|56))?',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[13]\\d{0,3}|[24-8])\\d{7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'18001234567',
                'possibleLengths'=>{
                                     'national'=>'11'
                                   },
                'nationalNumberPattern'=>'1800\\d{7}'
              },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'19(?:0[01]|4[78])\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'11'
                                      },
                   'exampleNumber'=>'19001234567'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200002C/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Colombia'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'3211234567',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'3(?:0[0-5]|1\\d|2[0-3]|5[01])\\d{7}'
            },
  'internationalPrefix'=>'00(?:4(?:[14]4|56)|[579])',
  'countryCode'=>'57',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'12345678',
                 'nationalNumberPattern'=>'[124-8][2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    }
               },
  'nationalPrefix'=>'0'
}
;
}

1;
