package Number::MuPhone::Parser::TA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'8999',
                 'possibleLengths'=>{
                                      'national'=>'4'
                                    },
                 'nationalNumberPattern'=>'8\\d{3}'
               },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'CountryCode'=>'TA',
  'TerritoryName'=>'Tristan da Cunha',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'8\\d{3}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'290'
}
;
}

1;
