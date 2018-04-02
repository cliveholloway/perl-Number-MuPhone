package Number::MuPhone::Parser::AC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Ascension Island',
  'CountryCode'=>'AC',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                },
  'countryCode'=>'247',
  'fixedLine'=>{
                 'exampleNumber'=>'62889',
                 'nationalNumberPattern'=>'6[2-467]\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    }
               },
  'uan'=>{
           'nationalNumberPattern'=>'[01589]\\d{5}',
           'possibleLengths'=>{
                                'national'=>'6'
                              },
           'exampleNumber'=>'542011'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[46]\\d{4}|[01589]\\d{5}'
                 },
  'mobile'=>{
              'exampleNumber'=>'40123',
              'nationalNumberPattern'=>'4\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        }
}
;
}

1;
