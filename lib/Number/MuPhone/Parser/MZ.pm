package Number::MuPhone::Parser::MZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000091/en'
                },
  'CountryCode'=>'MZ',
  'TerritoryName'=>'Mozambique',
  'countryCode'=>'258',
  'fixedLine'=>{
                 'exampleNumber'=>'21123456',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2(?:[1346]\\d|5[0-2]|[78][12]|93)\\d{5}'
               },
  'mobile'=>{
              'exampleNumber'=>'821234567',
              'nationalNumberPattern'=>'8[2-7]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([28]\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'2|8[2-7]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(80\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'80',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[28]\\d{7,8}'
                 }
}
;
}

1;
