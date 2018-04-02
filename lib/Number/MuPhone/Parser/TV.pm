package Number::MuPhone::Parser::TV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'20123',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'nationalNumberPattern'=>'2[02-9]\\d{3}'
               },
  'countryCode'=>'688',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[279]\\d{4,6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'901234',
              'possibleLengths'=>{
                                   'national'=>'6,7'
                                 },
              'nationalNumberPattern'=>'(?:70\\d|90)\\d{4}'
            },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Tuvalu',
  'CountryCode'=>'TV',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000D9/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Tuvalu'
                               ]
                }
}
;
}

1;
