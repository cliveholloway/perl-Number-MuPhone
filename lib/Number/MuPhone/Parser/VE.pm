package Number::MuPhone::Parser::VE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'4(?:1[24-8]|2[46])\\d{7}',
              'exampleNumber'=>'4121234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1-$2',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{7})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24589]\\d{9}'
                 },
  'carrierCodeFormattingRule'=>'$CC $FG',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'58',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:12|3[457-9]|[58][1-9]|[467]\\d|9[1-6])|50[01])\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'exampleNumber'=>'2121234567'
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000E3/en',
                                 'http://en.wikipedia.org/wiki/+58'
                               ]
                },
  'CountryCode'=>'VE',
  'TerritoryName'=>'Venezuela',
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'9001234567',
                   'nationalNumberPattern'=>'900\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      }
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}',
                'exampleNumber'=>'8001234567'
              }
}
;
}

1;
