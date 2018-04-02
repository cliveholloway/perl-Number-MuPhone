package Number::MuPhone::Parser::TA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'290',
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
  'generalDesc'=>{
                   'nationalNumberPattern'=>'8\\d{3}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                },
  'TerritoryName'=>'Tristan da Cunha',
  'CountryCode'=>'TA'
}
;
}

1;
