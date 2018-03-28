package Number::MuPhone::Parser::AO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'222123456',
                 'nationalNumberPattern'=>'2\\d(?:[26-9]\\d|\\d[26-9])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'mobile'=>{
              'nationalNumberPattern'=>'9[1-49]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'923123456'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000006/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'244',
  'CountryCode'=>'AO',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Angola',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[29]\\d{8}'
                 }
}
;
}

1;
