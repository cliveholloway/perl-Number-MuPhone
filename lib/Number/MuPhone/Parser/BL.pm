package Number::MuPhone::Parser::BL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'590(?:2[7-9]|5[12]|87)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'590271234'
               },
  'countryCode'=>'590',
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'690001234',
              'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000058/en'
                },
  'CountryCode'=>'BL',
  'TerritoryName'=>'Saint Barthélemy, French Antilles'
}
;
}

1;
