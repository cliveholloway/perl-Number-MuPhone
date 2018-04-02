package Number::MuPhone::Parser::PY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Paraguay',
  'CountryCode'=>'PY',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Paraguay',
                                 'http://www.itu.int/oth/T02020000A5/en',
                                 'http://www.copaco.com.py/portal/index.php/component/content/article/8-empresa/74-codigos-de-area.html'
                               ]
                },
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'5[0-5]\\d{4,7}|[2-46-9]\\d{5,8}'
                 },
  'uan'=>{
           'exampleNumber'=>'201234567',
           'nationalNumberPattern'=>'[2-9]0\\d{4,7}',
           'possibleLengths'=>{
                                'national'=>'[6-9]'
                              }
         },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'8700[0-4]\\d{4}',
            'exampleNumber'=>'870012345'
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{5})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'leadingDigits'=>'(?:[26]1|3[289]|4[124678]|7[123]|8[1236])'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'leadingDigits'=>'(?:[26]1|3[289]|4[124678]|7[123]|8[1236])'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{3,6})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'[2-9]0'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{6})',
                                                'leadingDigits'=>'9[1-9]'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'8700',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'[2-8][1-9]',
                                                'pattern'=>'(\\d{3})(\\d{4,5})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[2-8][1-9]',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9(?:6[12]|[78][1-6]|9[1-5])\\d{6}',
              'exampleNumber'=>'961456789'
            },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:[26]1|3[289]|4[124678]|7[123]|8[1236])\\d{5,7}|(?:2(?:2[4568]|7[15]|9[1-5])|3(?:18|3[167]|4[2357]|51)|4(?:18|2[45]|3[12]|5[13]|64|71|9[1-47])|5(?:[1-4]\\d|5[0234])|6(?:3[1-3]|44|7[1-4678])|7(?:17|4[0-4]|6[1-578]|75|8[0-8])|858)\\d{5,6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'[7-9]'
                                    },
                 'exampleNumber'=>'212345678'
               },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'595',
  'nationalPrefix'=>'0'
}
;
}

1;
