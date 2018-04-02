package Number::MuPhone::Parser::DE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'30123456',
                 'nationalNumberPattern'=>'2\\d{5,13}|3(?:0\\d{3,13}|2\\d{9}|[3-9]\\d{4,13})|4(?:0\\d{3,12}|\\d{5,13})|5(?:0[2-8]|[1256]\\d|[38][0-8]|4\\d{0,2}|[79][0-7])\\d{3,11}|6(?:\\d{5,13}|9\\d{3,12})|7(?:0[2-8]|[1-9]\\d)\\d{3,10}|8(?:0[2-9]|[1-8]\\d|9\\d?)\\d{3,10}|9(?:0[6-9]\\d{3,10}|1\\d{4,12}|[2-9]\\d{4,11})',
                 'possibleLengths'=>{
                                      'localOnly'=>'3,4',
                                      'national'=>'[5-15]'
                                    }
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000051/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_germany'
                               ]
                },
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'12,13'
                                    },
                 'nationalNumberPattern'=>'1(?:5(?:(?:2\\d55|7\\d99|9\\d33)\\d{7}|(?:[034568]00|113)\\d{8})|6(?:013|255|399)\\d{7,8}|7(?:[015]13|[234]55|[69]33|[78]99)\\d{7,8})',
                 'exampleNumber'=>'177991234567'
               },
  'TerritoryName'=>'Germany',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10,11'
                                      },
                   'nationalNumberPattern'=>'137[7-9]\\d{6}|900(?:[135]\\d{6}|9\\d{7})',
                   'exampleNumber'=>'9001234567'
                 },
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'15123456789',
              'nationalNumberPattern'=>'1(?:5[0-25-9]\\d{8}|6[023]\\d{7,8}|7\\d{8,9})',
              'possibleLengths'=>{
                                   'national'=>'10,11'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(1\\d{2})(\\d{7,8})',
                                                'leadingDigits'=>'1[67]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(15\\d{3})(\\d{6})',
                                                'leadingDigits'=>'15[0568]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(1\\d{3})(\\d{7})',
                                                'leadingDigits'=>'15',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{3,11})',
                                                'leadingDigits'=>'3[02]|40|[68]9'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{3,11})',
                                                'leadingDigits'=>'2(?:\\d1|0[2389]|1[24]|28|34)|3(?:[3-9][15]|40)|[4-8][1-9]1|9(?:06|[1-9]1)'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{2,11})',
                                                'leadingDigits'=>'[24-6]|[7-9](?:\\d[1-9]|[1-9]\\d)|3(?:3(?:0[1-467]|2[127-9]|3[124578]|[46][1246]|7[1257-9]|8[1256]|9[145])|4(?:2[135]|3[1357]|4[13578]|6[1246]|7[1356]|9[1346])|5(?:0[14]|2[1-3589]|3[1357]|4[1246]|6[1-4]|7[1346]|8[13568]|9[1246])|6(?:0[356]|2[1-489]|3[124-6]|4[1347]|6[13]|7[12579]|8[1-356]|9[135])|7(?:2[1-7]|3[1357]|4[145]|6[1-5]|7[1-4])|8(?:21|3[1468]|4[1347]|6[0135-9]|7[1467]|8[136])|9(?:0[12479]|2[1358]|3[1357]|4[134679]|6[1-9]|7[136]|8[147]|9[1468]))'
                                              },
                                              {
                                                'pattern'=>'(3\\d{4})(\\d{1,10})',
                                                'leadingDigits'=>'3',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'800',
                                                'pattern'=>'(800)(\\d{7,12})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d)(\\d{4,10})',
                                                'leadingDigits'=>'1(?:37|80)|900[1359]'
                                              },
                                              {
                                                'leadingDigits'=>'181',
                                                'pattern'=>'(1\\d{2})(\\d{5,11})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(18\\d{3})(\\d{6})',
                                                'leadingDigits'=>'18500',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(18\\d{2})(\\d{7})',
                                                'leadingDigits'=>'18[68]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(18\\d)(\\d{8})',
                                                'leadingDigits'=>'18[2-579]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(700)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'700'
                                              },
                                              {
                                                'leadingDigits'=>'138',
                                                'pattern'=>'(138)(\\d{4})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'15[013-68]',
                                                'pattern'=>'(15[013-68])(\\d{2})(\\d{8})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(15[279]\\d)(\\d{2})(\\d{7})',
                                                'leadingDigits'=>'15[279]'
                                              },
                                              {
                                                'leadingDigits'=>'1(?:6[023]|7)',
                                                'pattern'=>'(1[67]\\d)(\\d{2})(\\d{7,8})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'uan'=>{
           'exampleNumber'=>'18500123456',
           'possibleLengths'=>{
                                'national'=>'[8-14]'
                              },
           'nationalNumberPattern'=>'18(?:1\\d{5,11}|[2-9]\\d{8})'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-35-9]\\d{3,14}|4(?:[0-8]\\d{3,12}|9(?:[0-37]\\d|4(?:[1-35-8]|4\\d?)|5\\d{1,2}|6[1-8]\\d?)\\d{2,8})'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'49',
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'exampleNumber'=>'16412345',
             'nationalNumberPattern'=>'16(?:4\\d{1,10}|[89]\\d{1,11})',
             'possibleLengths'=>{
                                  'national'=>'[4-14]'
                                }
           },
  'CountryCode'=>'DE',
  'sharedCost'=>{
                  'nationalNumberPattern'=>'1(?:3(?:7[1-6]\\d{6}|8\\d{4})|80\\d{5,11})',
                  'possibleLengths'=>{
                                       'national'=>'[7-14]'
                                     },
                  'exampleNumber'=>'18012345'
                },
  'personalNumber'=>{
                      'exampleNumber'=>'70012345678',
                      'possibleLengths'=>{
                                           'national'=>'11'
                                         },
                      'nationalNumberPattern'=>'700\\d{8}'
                    },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'[10-15]'
                                   },
                'nationalNumberPattern'=>'800\\d{7,12}',
                'exampleNumber'=>'8001234567890'
              }
}
;
}

1;
