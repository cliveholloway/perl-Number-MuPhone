package Number::MuPhone::Parser::CG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002E/en'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'0[14-6]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'061234567'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'242',
  'CountryCode'=>'CG',
  'TerritoryName'=>'Congo (Rep. of the) (Brazzaville)',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'801',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[02]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'800',
                                                'pattern'=>'(\\d)(\\d{4})(\\d{4})'
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
  'fixedLine'=>{
                 'nationalNumberPattern'=>'222[1-589]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'222123456'
               }
}
;
}

1;
