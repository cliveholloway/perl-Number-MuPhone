package Number::MuPhone::Parser::MH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'1',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:247|528|625)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2471234'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000085/en'
                },
  'mobile'=>{
              'exampleNumber'=>'2351234',
              'nationalNumberPattern'=>'(?:235|329|45[56]|545)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'countryCode'=>'692',
  'internationalPrefix'=>'011',
  'CountryCode'=>'MH',
  'TerritoryName'=>'Marshall Islands',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1-$2',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-6]\\d{6}'
                 },
  'voip'=>{
            'exampleNumber'=>'6351234',
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'nationalNumberPattern'=>'635\\d{4}'
          }
}
;
}

1;
