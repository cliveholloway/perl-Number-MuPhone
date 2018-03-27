package Number::MuPhone::Parser::AC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'exampleNumber'=>'542011',
           'possibleLengths'=>{
                                'national'=>'6'
                              },
           'nationalNumberPattern'=>'[01589]\\d{5}'
         },
  'fixedLine'=>{
                 'exampleNumber'=>'62889',
                 'nationalNumberPattern'=>'6[2-467]\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    }
               },
  'countryCode'=>'247',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'nationalNumberPattern'=>'4\\d{4}',
              'exampleNumber'=>'40123'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[46]\\d{4}|[01589]\\d{5}'
                 },
  'TerritoryName'=>'Ascension Island',
  'CountryCode'=>'AC',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        }
}
;
}

1;
