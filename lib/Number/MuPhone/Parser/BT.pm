package Number::MuPhone::Parser::BT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2[3-6]|[34][5-7]|5[236]|6[2-46]|7[246]|8[2-4])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7',
                                      'localOnly'=>'6'
                                    },
                 'exampleNumber'=>'2345678'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-8]\\d{6,7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'1|77',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'pattern'=>'([2-8])(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[2-68]|7[246]',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'CountryCode'=>'BT',
  'TerritoryName'=>'Bhutan',
  'countryCode'=>'975',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'17123456',
              'nationalNumberPattern'=>'(?:1[67]|77)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000019/en'
                }
}
;
}

1;
