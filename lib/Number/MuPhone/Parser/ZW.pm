package Number::MuPhone::Parser::ZW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7[1378]\\d{7}',
              'exampleNumber'=>'711234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([49])(\\d{3})(\\d{2,4})',
                                                'leadingDigits'=>'4|9[2-9]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'7',
                                                'pattern'=>'(7\\d)(\\d{3})(\\d{3,4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(86\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'86[24]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'([2356]\\d{2})(\\d{3,5})',
                                                'leadingDigits'=>'2(?:0[45]|2[278]|[49]8|[78])|3(?:08|17|3[78]|7[1569]|8[37]|98)|5[15][78]|6(?:[29]8|[38]7|6[78]|75|[89]8)'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'2(?:1[39]|2[0157]|31|[56][14]|7[35]|84)|329'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1[3-9]|2[02569]|3[0-69]|5[05689]|6\\d',
                                                'pattern'=>'([1-356]\\d)(\\d{3,5})'
                                              },
                                              {
                                                'pattern'=>'([235]\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[23]9|54',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'258[23]|5483',
                                                'pattern'=>'([25]\\d{3})(\\d{3,5})'
                                              },
                                              {
                                                'pattern'=>'(8\\d{3})(\\d{6})',
                                                'leadingDigits'=>'86',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'80',
                                                'pattern'=>'(80\\d)(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'8686123456',
            'nationalNumberPattern'=>'86(?:1[12]|30|44|55|77|8[367]|99)\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'10'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'2(?:[0-2457-9]\\d{3,8}|6(?:[14]\\d{7}|\\d{4}))|[13-79]\\d{4,9}|8[06]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'263',
  'fixedLine'=>{
                 'exampleNumber'=>'1312345',
                 'possibleLengths'=>{
                                      'national'=>'[5-10]',
                                      'localOnly'=>'3,4'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:0(?:4\\d|5\\d{2})|2[278]\\d|48\\d|7(?:[1-7]\\d|[089]\\d{2})|8(?:[2-57-9]|[146]\\d{2})|98)|3(?:08|17|3[78]|7(?:[19]|[56]\\d)|8[37]|98)|5[15][78]|6(?:28\\d{2}|37|6[78]|75\\d|98|8(?:7\\d|8)))\\d{3}|(?:2(?:1[39]|2[0157]|31|[56][14]|7[35]|84)|329)\\d{7}|(?:1(?:3\\d{2}|[4-8]|9\\d)|2(?:0\\d{2}|12|292|[569]\\d)|3(?:[26]|[013459]\\d)|5(?:0|1[2-4]|26|[37]2|5\\d{2}|[689]\\d)|6(?:[39]|[01246]\\d|[78]\\d{2}))\\d{3}|(?:29\\d|39|54)\\d{6}|(?:(?:25|54)83\\d|2582\\d{2}|65[2-8])\\d{2}|(?:4\\d{6,7}|9[2-9]\\d{4,5})'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E9/en'
                },
  'CountryCode'=>'ZW',
  'TerritoryName'=>'Zimbabwe',
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}'
              }
}
;
}

1;
