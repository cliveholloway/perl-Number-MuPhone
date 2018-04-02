package Number::MuPhone::Parser::NR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000094/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Nauru'
                               ]
                },
  'CountryCode'=>'NR',
  'TerritoryName'=>'Nauru',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:444|888)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'4441234'
               },
  'countryCode'=>'674',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'55[5-9]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'5551234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[458]\\d{6}'
                 }
}
;
}

1;
