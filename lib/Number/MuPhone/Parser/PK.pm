package Number::MuPhone::Parser::PK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:21|42)[2-9]\\d{7}|(?:2[25]|4[0146-9]|5[1-35-7]|6[1-8]|7[14]|8[16]|91)[2-9]\\d{6}|(?:2(?:3[2358]|4[2-4]|9[2-8])|45[3479]|54[2-467]|60[468]|72[236]|8(?:2[2-689]|3[23578]|4[3478]|5[2356])|9(?:2[2-8]|3[27-9]|4[2-6]|6[3569]|9[25-8]))[2-9]\\d{5,6}|58[126]\\d{7}',
                 'possibleLengths'=>{
                                      'localOnly'=>'[6-8]',
                                      'national'=>'9,10'
                                    },
                 'exampleNumber'=>'2123456789'
               },
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(111)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'(?:2[125]|4[0-246-9]|5[1-35-7]|6[1-8]|7[14]|8[16]|91)111'
                                              },
                                              {
                                                'leadingDigits'=>'(?:2[349]|45|54|60|72|8[2-5]|9[2-9])\\d111',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(111)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{7,8})',
                                                'leadingDigits'=>'(?:2[125]|4[0-246-9]|5[1-35-7]|6[1-8]|7[14]|8[16]|91)[2-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{6,7})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'(?:2[349]|45|5(?:4|8[12])|60|72|8[2-5]|9[2-9])\\d[2-9]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(3\\d{2})(\\d{7})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1',
                                                'pattern'=>'(1\\d{3})(\\d{5,6})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              },
                                              {
                                                'pattern'=>'(586\\d{2})(\\d{5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'586'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'([89]00)(\\d{3})(\\d{2})',
                                                'leadingDigits'=>'[89]00',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{8}|[2-8]\\d{5,11}|9(?:[013-9]\\d{4,9}|2\\d(?:111\\d{6}|\\d{3,7}))'
                 },
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}'
              },
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'uan'=>{
           'nationalNumberPattern'=>'(?:2(?:[125]|3[2358]|4[2-4]|9[2-8])|4(?:[0-246-9]|5[3479])|5(?:[1-35-7]|4[2-467])|6(?:[1-8]|0[468])|7(?:[14]|2[236])|8(?:[16]|2[2-689]|3[23578]|4[3478]|5[2356])|9(?:1|22|3[27-9]|4[2-6]|6[3569]|9[2-7]))111\\d{6}',
           'possibleLengths'=>{
                                'national'=>'11,12'
                              },
           'exampleNumber'=>'21111825888'
         },
  'TerritoryName'=>'Pakistan',
  'CountryCode'=>'PK',
  'personalNumber'=>{
                      'exampleNumber'=>'122044444',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'122\\d{6}'
                    },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'900\\d{5}',
                   'exampleNumber'=>'90012345'
                 },
  'mobile'=>{
              'exampleNumber'=>'3012345678',
              'nationalNumberPattern'=>'3(?:[014]\\d|2[0-5]|3[0-7]|55|64)\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000A1/en',
                                 'http://en.wikipedia.org/wiki/%2B92'
                               ]
                },
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'92'
}
;
}

1;
