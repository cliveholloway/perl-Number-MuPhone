package Number::MuPhone::Parser::TV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'TV',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'TerritoryName'=>'Tuvalu',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[279]\\d{4,6}'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000D9/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Tuvalu'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'901234',
              'nationalNumberPattern'=>'(?:70\\d|90)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6,7'
                                 }
            },
  'countryCode'=>'688',
  'internationalPrefix'=>'00',
  'fixedLine'=>{
                 'exampleNumber'=>'20123',
                 'nationalNumberPattern'=>'2[02-9]\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    }
               }
}
;
}

1;
