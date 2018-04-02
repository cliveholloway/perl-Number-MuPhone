package Number::MuPhone::Parser::LR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'332(?:02|[2-5]\\d)\\d{4}',
                   'exampleNumber'=>'332021234'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000079/en'
                },
  'CountryCode'=>'LR',
  'TerritoryName'=>'Liberia',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'21234567',
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    },
                 'nationalNumberPattern'=>'(?:2\\d{3}|33333)\\d{4}'
               },
  'countryCode'=>'231',
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(2\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'2'
                                              },
                                              {
                                                'leadingDigits'=>'[45]',
                                                'pattern'=>'([4-5])(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[23578]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7,9'
                                 },
              'nationalNumberPattern'=>'(?:20\\d{2}|330\\d|4[67]|5(?:55)?\\d|77\\d{2}|88\\d{2})\\d{5}',
              'exampleNumber'=>'770123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'2\\d{7,8}|[378]\\d{8}|4\\d{6}|5\\d{6,8}'
                 }
}
;
}

1;
