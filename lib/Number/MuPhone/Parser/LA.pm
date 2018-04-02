package Number::MuPhone::Parser::LA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Lao People\'s Dem. Rep.',
  'CountryCode'=>'LA',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000075/en',
                                 'http://en.wikipedia.org/wiki/+856'
                               ]
                },
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{7,9}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(20)(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'20'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([2-8]\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'2[13]|3[14]|[4-8]'
                                              },
                                              {
                                                'leadingDigits'=>'30',
                                                'pattern'=>'(30)(\\d{2})(\\d{2})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'20(?:2[2389]|5[24-689]|7[6-8]|9[15-9])\\d{6}',
              'exampleNumber'=>'2023123456'
            },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'8,9'
                                    },
                 'nationalNumberPattern'=>'(?:2[13]|3(?:0\\d|[14])|[5-7][14]|41|8[1468])\\d{6}',
                 'exampleNumber'=>'21212862'
               },
  'nationalPrefix'=>'0',
  'countryCode'=>'856',
  'nationalPrefixFormattingRule'=>'$NP$FG'
}
;
}

1;
