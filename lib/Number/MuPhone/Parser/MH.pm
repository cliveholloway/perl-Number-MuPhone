package Number::MuPhone::Parser::MH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'011',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000085/en'
                },
  'CountryCode'=>'MH',
  'TerritoryName'=>'Marshall Islands',
  'nationalPrefix'=>'1',
  'countryCode'=>'692',
  'fixedLine'=>{
                 'exampleNumber'=>'2471234',
                 'nationalNumberPattern'=>'(?:247|528|625)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'mobile'=>{
              'exampleNumber'=>'2351234',
              'nationalNumberPattern'=>'(?:235|329|45[56]|545)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'voip'=>{
            'nationalNumberPattern'=>'635\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'exampleNumber'=>'6351234'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-6]\\d{6}'
                 }
}
;
}

1;
