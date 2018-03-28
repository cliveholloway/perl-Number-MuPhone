package Number::MuPhone::Parser::GQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'3(?:3(?:3\\d[7-9]|[0-24-9]\\d[46])|5\\d{2}[7-9])\\d{4}',
                 'exampleNumber'=>'333091234'
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:222|55[15])\\d{6}',
              'exampleNumber'=>'222123456'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000041/en'
                },
  'countryCode'=>'240',
  'internationalPrefix'=>'00',
  'CountryCode'=>'GQ',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[235]',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{6})',
                                                'leadingDigits'=>'[89]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Equatorial Guinea',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d[1-9]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'900123456'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'80\\d[1-9]\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23589]\\d{8}'
                 }
}
;
}

1;
