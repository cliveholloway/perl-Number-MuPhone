package Number::MuPhone::Parser::BW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[2-6]'
                                              },
                                              {
                                                'pattern'=>'(7\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'7',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'9',
                                                'pattern'=>'(90)(\\d{5})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'7(?:[1-6]\\d|7[014-8])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'71123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-79]\\d{6,7}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'79[12][01]\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'exampleNumber'=>'79101234'
          },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:4[0-48]|6[0-24]|9[0578])|3(?:1[0-35-9]|55|[69]\\d|7[01])|4(?:6[03]|7[1267]|9[0-5])|5(?:3[0389]|4[0489]|7[1-47]|88|9[0-49])|6(?:2[1-35]|5[149]|8[067]))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2401234'
               },
  'countryCode'=>'267',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200001C/en'
                },
  'CountryCode'=>'BW',
  'TerritoryName'=>'Botswana',
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'exampleNumber'=>'9012345'
                 }
}
;
}

1;
