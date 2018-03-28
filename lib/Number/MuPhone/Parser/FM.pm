package Number::MuPhone::Parser::FM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'countryCode'=>'691',
  'mobile'=>{
              'nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-7]\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'3501234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200008B/en'
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[39]\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'CountryCode'=>'FM',
  'TerritoryName'=>'Micronesia, Federated States of',
  'fixedLine'=>{
                 'exampleNumber'=>'3201234',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-6]\\d{5}'
               }
}
;
}

1;
