package Number::MuPhone::Parser::MM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'[7-10]'
                                 },
              'nationalNumberPattern'=>'17[01]\\d{4}|9(?:2(?:[0-4]|5\\d{2}|6[0-5]\\d)|3(?:[0-36]|4[069])\\d|4(?:0[0-4]\\d|[1379]\\d|2\\d{2}|4[0-589]\\d|5\\d{2}|88)|5[0-6]|6(?:1\\d|9\\d{2}|\\d)|7(?:3\\d|[6-9]\\d{2})|8(?:\\d|9\\d{2})|9(?:1\\d|[5-7]\\d{2}|[089]))\\d{5}',
              'exampleNumber'=>'92123456'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'1|2[245]',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3,4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'251',
                                                'pattern'=>'(2)(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'16|2',
                                                'pattern'=>'(\\d)(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'432|67|81'
                                              },
                                              {
                                                'leadingDigits'=>'[4-8]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{3,4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'9(?:2[0-4]|[35-9]|4[137-9])',
                                                'pattern'=>'(9)(\\d{3})(\\d{4,6})'
                                              },
                                              {
                                                'leadingDigits'=>'9(?:3[0-36]|4[0-57-9])',
                                                'pattern'=>'(9)([34]\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'92[56]',
                                                'pattern'=>'(9)(\\d{3})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(9)(\\d{3})(\\d{3})(\\d{2})',
                                                'leadingDigits'=>'93'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'13331234',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'1333\\d{4}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[178]\\d{5,7}|[24-6]\\d{5,8}|9(?:[279]\\d{0,2}|5|[34]\\d{1,2}|6(?:\\d{1,2})?|8(?:\\d{2})?)\\d{6}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'95',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'1234567',
                 'nationalNumberPattern'=>'1(?:2\\d{1,2}|[35]\\d|4(?:\\d|2[236]|39)|6\\d?|[89][0-6]\\d)\\d{4}|2(?:2(?:000\\d{3}|\\d{4})|3\\d{4}|4(?:0\\d{5}|26\\d{4}|39\\d{4}|\\d{4})|5(?:1\\d{3,6}|[02-9]\\d{3,5})|[6-9]\\d{4})|4(?:2[245-8]|3(?:2(?:02)?|[346]|56?)|[46][2-6]|5[3-5])\\d{4}|5(?:2(?:2(?:\\d{1,2})?|[3-8])|3[2-68]|4(?:21?|[4-8])|5[23]|6[2-4]|7[2-8]|8[24-7]|9[2-7])\\d{4}|6(?:0[23]|1(?:2(?:0|4\\d)?|[356])|2[2-6]|3[24-6]|4(?:2(?:4\\d)?|[3-6])|5[2-4]|6[2-8]|7(?:[2367]|4(?:\\d|39)|5\\d?|8[145]\\d)|8[245]|9(?:20?|4))\\d{4}|7(?:[04][24-8]|1(?:20?|[3-7])|22|3[2-4]|5[2-7])\\d{4}|8(?:1(?:2\\d{1,2}|[3-689]\\d)|2(?:2\\d|3(?:\\d|20)|[4-8]\\d)|3[24]\\d|4[24-7]\\d|5[245]\\d|6[23]\\d)\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'[6-9]',
                                      'localOnly'=>'5'
                                    }
               },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000092/en'
                },
  'CountryCode'=>'MM',
  'TerritoryName'=>'Myanmar',
  'internationalPrefix'=>'00'
}
;
}

1;
