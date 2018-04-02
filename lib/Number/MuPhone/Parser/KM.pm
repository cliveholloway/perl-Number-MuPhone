package Number::MuPhone::Parser::KM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'(?:39[01]|8\\d{2})\\d{4}',
                   'exampleNumber'=>'8001234'
                 },
  'TerritoryName'=>'Comoros',
  'CountryCode'=>'KM',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002D/en'
                },
  'countryCode'=>'269',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'7[4-7]\\d{5}',
                 'exampleNumber'=>'7712345'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3478]\\d{6}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'[34]\\d{6}',
              'exampleNumber'=>'3212345'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        }
}
;
}

1;
