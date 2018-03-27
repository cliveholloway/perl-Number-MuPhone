package Number::MuPhone::Parser::BQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'7151234',
                 'nationalNumberPattern'=>'(?:318[023]|41(?:6[023]|70)|7(?:1[578]|50)\\d)\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[347]\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'CountryCode'=>'BQ',
  'TerritoryName'=>'Bonaire, Sint Eustatius and Saba',
  'internationalPrefix'=>'00',
  'countryCode'=>'599',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000F8/en'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:31(?:8[14-8]|9[14578])|416[145-9]|7(?:0[01]|7[07]|8\\d|9[056])\\d)\\d{3}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'3181234'
            }
}
;
}

1;
