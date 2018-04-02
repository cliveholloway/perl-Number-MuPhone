package Number::MuPhone::Parser::TK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2[2-4]|[34]\\d)\\d{2,5}',
                 'possibleLengths'=>{
                                      'national'=>'[4-7]'
                                    },
                 'exampleNumber'=>'3101'
               },
  'countryCode'=>'690',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-47]\\d{3,6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'[4-7]'
                                 },
              'nationalNumberPattern'=>'7[2-4]\\d{2,5}',
              'exampleNumber'=>'7290'
            },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Tokelau',
  'CountryCode'=>'TK',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D2/en'
                }
}
;
}

1;
