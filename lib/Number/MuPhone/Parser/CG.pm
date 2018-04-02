package Number::MuPhone::Parser::CG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'242',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'222[1-589]\\d{5}',
                 'exampleNumber'=>'222123456'
               },
  'mobile'=>{
              'exampleNumber'=>'061234567',
              'nationalNumberPattern'=>'0[14-6]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'801',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[02]'
                                              },
                                              {
                                                'pattern'=>'(\\d)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'800',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[028]\\d{8}'
                 },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'80(?:0\\d{2}|11[01])\\d{4}',
                   'exampleNumber'=>'800123456'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002E/en'
                },
  'CountryCode'=>'CG',
  'TerritoryName'=>'Congo (Rep. of the) (Brazzaville)'
}
;
}

1;
