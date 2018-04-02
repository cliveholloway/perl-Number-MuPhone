package Number::MuPhone::Parser::BT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'975',
  'fixedLine'=>{
                 'exampleNumber'=>'2345678',
                 'possibleLengths'=>{
                                      'national'=>'7',
                                      'localOnly'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:2[3-6]|[34][5-7]|5[236]|6[2-46]|7[246]|8[2-4])\\d{5}'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-8]\\d{6,7}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:1[67]|77)\\d{6}',
              'exampleNumber'=>'17123456'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'1|77',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'leadingDigits'=>'[2-68]|7[246]',
                                                'pattern'=>'([2-8])(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Bhutan',
  'CountryCode'=>'BT',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000019/en'
                }
}
;
}

1;
