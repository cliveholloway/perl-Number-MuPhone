package Number::MuPhone::Parser::SH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Saint Helena',
  'CountryCode'=>'SH',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'22158',
                 'nationalNumberPattern'=>'2(?:[0-57-9]\\d|6[4-9])\\d{2}',
                 'possibleLengths'=>{
                                      'national'=>'4,5'
                                    }
               },
  'countryCode'=>'290',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[256]\\d{4}'
                 },
  'mainCountryForCode'=>'true',
  'voip'=>{
            'exampleNumber'=>'26212',
            'nationalNumberPattern'=>'262\\d{2}',
            'possibleLengths'=>{
                                 'national'=>'5'
                               }
          },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'51234',
              'nationalNumberPattern'=>'[56]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 }
            }
}
;
}

1;
