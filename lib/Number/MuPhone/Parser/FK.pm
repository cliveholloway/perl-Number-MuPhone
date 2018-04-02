package Number::MuPhone::Parser::FK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'nationalNumberPattern'=>'[2-47]\\d{4}',
                 'exampleNumber'=>'31234'
               },
  'countryCode'=>'500',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'51234',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'nationalNumberPattern'=>'[56]\\d{4}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-7]\\d{4}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000046/en'
                },
  'CountryCode'=>'FK',
  'TerritoryName'=>'Falkland Islands (Malvinas)'
}
;
}

1;
