package Number::MuPhone::Parser::NU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'NU',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'TerritoryName'=>'Niue',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-5]\\d{3}'
                 },
  'mobile'=>{
              'exampleNumber'=>'1234',
              'nationalNumberPattern'=>'[125]\\d{3}',
              'possibleLengths'=>{
                                   'national'=>'4'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000EC/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Niue'
                               ]
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'683',
  'fixedLine'=>{
                 'exampleNumber'=>'4002',
                 'nationalNumberPattern'=>'[34]\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'4'
                                    }
               }
}
;
}

1;
