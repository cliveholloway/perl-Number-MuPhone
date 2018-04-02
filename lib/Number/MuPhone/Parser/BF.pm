package Number::MuPhone::Parser::BF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Burkina Faso',
  'CountryCode'=>'BF',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000021/en',
                                 'http://www.onatel.bf/onatelsa/plandenumerotation_burkina.pdf'
                               ]
                },
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[25-7]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:5[156]\\d|[67]\\d{2})\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'70123456'
            },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2(?:0(?:49|5[23]|6[56]|9[016-9])|4(?:4[569]|5[4-6]|6[56]|7[0179])|5(?:[34]\\d|50|6[5-7]))\\d{4}',
                 'exampleNumber'=>'20491234'
               },
  'countryCode'=>'226'
}
;
}

1;
