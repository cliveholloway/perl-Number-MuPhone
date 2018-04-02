package Number::MuPhone::Parser::FM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-7]\\d{5}',
              'exampleNumber'=>'3501234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[39]\\d{6}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'3201234',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-6]\\d{5}'
               },
  'countryCode'=>'691',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200008B/en'
                },
  'CountryCode'=>'FM',
  'TerritoryName'=>'Micronesia, Federated States of',
  'internationalPrefix'=>'00'
}
;
}

1;
