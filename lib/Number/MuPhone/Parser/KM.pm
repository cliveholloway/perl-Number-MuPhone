package Number::MuPhone::Parser::KM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3478]\\d{6}'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'8001234',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'(?:39[01]|8\\d{2})\\d{4}'
                 },
  'TerritoryName'=>'Comoros',
  'CountryCode'=>'KM',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'269',
  'mobile'=>{
              'nationalNumberPattern'=>'[34]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'3212345'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002D/en'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'7712345',
                 'nationalNumberPattern'=>'7[4-7]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               }
}
;
}

1;
