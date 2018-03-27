package Number::MuPhone::Parser::GY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:1[6-9]|2[0-35-9]|3[1-4]|5[3-9]|6\\d|7[0-24-79])|3(?:2[25-9]|3\\d)|4(?:4[0-24]|5[56])|77[1-57])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2201234'
               },
  'internationalPrefix'=>'001',
  'countryCode'=>'592',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005D/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'6\\d{6}',
              'exampleNumber'=>'6091234'
            },
  'tollFree'=>{
                'exampleNumber'=>'2891234',
                'nationalNumberPattern'=>'(?:289|862)\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-46-9]\\d{6}'
                 },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'9008\\d{3}',
                   'exampleNumber'=>'9008123'
                 },
  'TerritoryName'=>'Guyana',
  'CountryCode'=>'GY',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        }
}
;
}

1;
