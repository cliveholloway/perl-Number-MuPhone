package Number::MuPhone::Parser::NR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'exampleNumber'=>'5551234',
              'nationalNumberPattern'=>'55[5-9]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000094/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Nauru'
                               ]
                },
  'countryCode'=>'674',
  'internationalPrefix'=>'00',
  'CountryCode'=>'NR',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'TerritoryName'=>'Nauru',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[458]\\d{6}'
                 },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:444|888)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'4441234'
               }
}
;
}

1;
