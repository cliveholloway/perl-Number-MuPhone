package Number::MuPhone::Parser::TL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-489]\\d{6}|7\\d{6,7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[2-489]|70',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'7[3-8]',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'77212345',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7[3-8]\\d{6}'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'2112345',
                 'nationalNumberPattern'=>'(?:2[1-5]|3[1-9]|4[1-4])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'countryCode'=>'670',
  'TerritoryName'=>'Timor-Leste (East Timor)',
  'CountryCode'=>'TL',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D0/en'
                },
  'premiumRate'=>{
                   'exampleNumber'=>'9012345',
                   'nationalNumberPattern'=>'90\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      }
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'80\\d{5}',
                'exampleNumber'=>'8012345'
              },
  'internationalPrefix'=>'00',
  'personalNumber'=>{
                      'nationalNumberPattern'=>'70\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'7'
                                         },
                      'exampleNumber'=>'7012345'
                    }
}
;
}

1;
