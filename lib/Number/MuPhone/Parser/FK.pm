package Number::MuPhone::Parser::FK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'[2-47]\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'exampleNumber'=>'31234'
               },
  'CountryCode'=>'FK',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'TerritoryName'=>'Falkland Islands (Malvinas)',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-7]\\d{4}'
                 },
  'mobile'=>{
              'exampleNumber'=>'51234',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'nationalNumberPattern'=>'[56]\\d{4}'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000046/en'
                },
  'countryCode'=>'500',
  'internationalPrefix'=>'00'
}
;
}

1;
