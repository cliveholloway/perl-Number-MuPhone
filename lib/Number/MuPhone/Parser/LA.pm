package Number::MuPhone::Parser::LA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8,9',
                                      'localOnly'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:2[13]|3(?:0\\d|[14])|[5-7][14]|41|8[1468])\\d{6}',
                 'exampleNumber'=>'21212862'
               },
  'nationalPrefix'=>'0',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{7,9}'
                 },
  'TerritoryName'=>'Lao People\'s Dem. Rep.',
  'CountryCode'=>'LA',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(20)(\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'20'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2[13]|3[14]|[4-8]',
                                                'pattern'=>'([2-8]\\d)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'30',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(30)(\\d{2})(\\d{2})(\\d{3})'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'856',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'20(?:2[2389]|5[24-689]|7[6-8]|9[15-9])\\d{6}',
              'exampleNumber'=>'2023123456'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000075/en',
                                 'http://en.wikipedia.org/wiki/+856'
                               ]
                }
}
;
}

1;
