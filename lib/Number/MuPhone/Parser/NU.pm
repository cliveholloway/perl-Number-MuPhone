package Number::MuPhone::Parser::NU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-5]\\d{3}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'1234',
              'possibleLengths'=>{
                                   'national'=>'4'
                                 },
              'nationalNumberPattern'=>'[125]\\d{3}'
            },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'4'
                                    },
                 'nationalNumberPattern'=>'[34]\\d{3}',
                 'exampleNumber'=>'4002'
               },
  'countryCode'=>'683',
  'TerritoryName'=>'Niue',
  'CountryCode'=>'NU',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000EC/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Niue'
                               ]
                },
  'internationalPrefix'=>'00'
}
;
}

1;
