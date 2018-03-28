package Number::MuPhone::Parser::GL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'exampleNumber'=>'801234',
                'nationalNumberPattern'=>'80\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'6'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-689]\\d{5}'
                 },
  'voip'=>{
            'exampleNumber'=>'381234',
            'nationalNumberPattern'=>'3[89]\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'6'
                               }
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'CountryCode'=>'GL',
  'TerritoryName'=>'Greenland',
  'countryCode'=>'299',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'[245][2-9]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'exampleNumber'=>'221234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000056/en'
                },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:19|3[1-6]|6[14689]|8[14-79]|9\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'exampleNumber'=>'321000'
               }
}
;
}

1;
