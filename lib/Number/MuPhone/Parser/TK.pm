package Number::MuPhone::Parser::TK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'[4-7]'
                                    },
                 'nationalNumberPattern'=>'(?:2[2-4]|[34]\\d)\\d{2,5}',
                 'exampleNumber'=>'3101'
               },
  'mobile'=>{
              'exampleNumber'=>'7290',
              'possibleLengths'=>{
                                   'national'=>'[4-7]'
                                 },
              'nationalNumberPattern'=>'7[2-4]\\d{2,5}'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D2/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'690',
  'CountryCode'=>'TK',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'TerritoryName'=>'Tokelau',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-47]\\d{3,6}'
                 }
}
;
}

1;
