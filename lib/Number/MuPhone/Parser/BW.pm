package Number::MuPhone::Parser::BW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200001C/en'
                },
  'mobile'=>{
              'exampleNumber'=>'71123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7(?:[1-6]\\d|7[014-8])\\d{5}'
            },
  'countryCode'=>'267',
  'internationalPrefix'=>'00',
  'CountryCode'=>'BW',
  'TerritoryName'=>'Botswana',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[2-6]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'7',
                                                'pattern'=>'(7\\d)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'9',
                                                'pattern'=>'(90)(\\d{5})'
                                              }
                                            ]
                        },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'exampleNumber'=>'9012345'
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-79]\\d{6,7}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'79[12][01]\\d{4}',
            'exampleNumber'=>'79101234'
          },
  'fixedLine'=>{
                 'exampleNumber'=>'2401234',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:4[0-48]|6[0-24]|9[0578])|3(?:1[0-35-9]|55|[69]\\d|7[01])|4(?:6[03]|7[1267]|9[0-5])|5(?:3[0389]|4[0489]|7[1-47]|88|9[0-49])|6(?:2[1-35]|5[149]|8[067]))\\d{4}'
               }
}
;
}

1;
