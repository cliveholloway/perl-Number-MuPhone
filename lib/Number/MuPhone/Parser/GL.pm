package Number::MuPhone::Parser::GL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'exampleNumber'=>'801234',
                'possibleLengths'=>{
                                     'national'=>'6'
                                   },
                'nationalNumberPattern'=>'80\\d{4}'
              },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000056/en'
                },
  'CountryCode'=>'GL',
  'TerritoryName'=>'Greenland',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:19|3[1-6]|6[14689]|8[14-79]|9\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'exampleNumber'=>'321000'
               },
  'countryCode'=>'299',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'221234',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'nationalNumberPattern'=>'[245][2-9]\\d{4}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-689]\\d{5}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'3[89]\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'6'
                               },
            'exampleNumber'=>'381234'
          }
}
;
}

1;
