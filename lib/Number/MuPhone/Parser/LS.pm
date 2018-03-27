package Number::MuPhone::Parser::LS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'LS',
  'TerritoryName'=>'Lesotho',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800[256]\\d{4}',
                'exampleNumber'=>'80021234'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2568]\\d{7}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000078/en'
                },
  'mobile'=>{
              'exampleNumber'=>'50123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[56]\\d{7}'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'266',
  'fixedLine'=>{
                 'exampleNumber'=>'22123456',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2\\d{7}'
               }
}
;
}

1;
