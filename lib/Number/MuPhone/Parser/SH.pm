package Number::MuPhone::Parser::SH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'22158',
                 'nationalNumberPattern'=>'2(?:[0-57-9]\\d|6[4-9])\\d{2}',
                 'possibleLengths'=>{
                                      'national'=>'4,5'
                                    }
               },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'5'
                               },
            'nationalNumberPattern'=>'262\\d{2}',
            'exampleNumber'=>'26212'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[256]\\d{4}'
                 },
  'mainCountryForCode'=>'true',
  'TerritoryName'=>'Saint Helena',
  'CountryCode'=>'SH',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'290',
  'mobile'=>{
              'exampleNumber'=>'51234',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'nationalNumberPattern'=>'[56]\\d{4}'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'
                }
}
;
}

1;
