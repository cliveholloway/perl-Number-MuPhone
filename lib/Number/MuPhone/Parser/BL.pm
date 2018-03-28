package Number::MuPhone::Parser::BL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'590(?:2[7-9]|5[12]|87)\\d{4}',
                 'exampleNumber'=>'590271234'
               },
  'nationalPrefix'=>'0',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'TerritoryName'=>'Saint Barthélemy, French Antilles',
  'CountryCode'=>'BL',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'countryCode'=>'590',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'690001234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000058/en'
                }
}
;
}

1;
