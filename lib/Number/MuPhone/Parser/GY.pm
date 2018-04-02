package Number::MuPhone::Parser::GY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-46-9]\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'6\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'6091234'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'2201234',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:1[6-9]|2[0-35-9]|3[1-4]|5[3-9]|6\\d|7[0-24-79])|3(?:2[25-9]|3\\d)|4(?:4[0-24]|5[56])|77[1-57])\\d{4}'
               },
  'countryCode'=>'592',
  'TerritoryName'=>'Guyana',
  'CountryCode'=>'GY',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005D/en'
                },
  'internationalPrefix'=>'001',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'(?:289|862)\\d{4}',
                'exampleNumber'=>'2891234'
              },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'9008\\d{3}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'exampleNumber'=>'9008123'
                 }
}
;
}

1;
