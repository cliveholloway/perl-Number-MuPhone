package Number::MuPhone::Parser::VE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'VE',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{7})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Venezuela',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9001234567'
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24589]\\d{9}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8001234567'
              },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000E3/en',
                                 'http://en.wikipedia.org/wiki/+58'
                               ]
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'nationalNumberPattern'=>'4(?:1[24-8]|2[46])\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'4121234567'
            },
  'carrierCodeFormattingRule'=>'$CC $FG',
  'countryCode'=>'58',
  'internationalPrefix'=>'00',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:12|3[457-9]|[58][1-9]|[467]\\d|9[1-6])|50[01])\\d{7}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'2121234567'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
