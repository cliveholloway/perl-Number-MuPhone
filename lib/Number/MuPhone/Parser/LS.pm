package Number::MuPhone::Parser::LS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000078/en'
                },
  'CountryCode'=>'LS',
  'TerritoryName'=>'Lesotho',
  'tollFree'=>{
                'exampleNumber'=>'80021234',
                'nationalNumberPattern'=>'800[256]\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'50123456',
              'nationalNumberPattern'=>'[56]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2568]\\d{7}'
                 },
  'countryCode'=>'266',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2\\d{7}',
                 'exampleNumber'=>'22123456'
               }
}
;
}

1;
