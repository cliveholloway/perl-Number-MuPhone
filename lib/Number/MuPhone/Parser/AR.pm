package Number::MuPhone::Parser::AR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'60[04579]\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'6001234567'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'8101234567',
                               'possibleLengths'=>{
                                                    'national'=>'10'
                                                  },
                               'nationalNumberPattern'=>'810\\d{7}'
                             },
  'TerritoryName'=>'Argentina',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000009/en',
                                 'https://www.enacom.gob.ar/indicativos-de-servicio_p141',
                                 'https://www.enacom.gob.ar/indicativos-interurbanos_p143',
                                 'http://en.wikipedia.org/wiki/+54'
                               ]
                },
  'fixedLine'=>{
                 'exampleNumber'=>'1123456789',
                 'nationalNumberPattern'=>'11\\d{8}|(?:2(?:2(?:[013]\\d|2[13-79]|4[1-6]|5[2457]|6[124-8]|7[1-4]|8[13-6]|9[1267])|3(?:1[467]|2[03-6]|3[13-8]|[49][2-6]|5[2-8]|[067]\\d)|4(?:7[3-8]|9\\d)|6(?:[01346]\\d|2[24-6]|5[15-8])|80\\d|9(?:[0124789]\\d|3[1-6]|5[234]|6[2-46]))|3(?:3(?:2[79]|6\\d|8[2578])|4(?:[78]\\d|0[0124-9]|[1-35]\\d|4[24-7]|6[02-9]|9[123678])|5(?:[138]\\d|2[1245]|4[1-9]|6[2-4]|7[1-6])|6[24]\\d|7(?:[0469]\\d|1[1568]|2[013-9]|3[145]|5[14-8]|7[2-57]|8[0-24-9])|8(?:[013578]\\d|2[15-7]|4[13-6]|6[1-357-9]|9[124]))|670\\d)\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'[6-8]'
                                    }
               },
  'nationalPrefix'=>'0',
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'nationalNumberPattern'=>'800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'nationalPrefixForParsing'=>'                  0?(?:(                    11|                    2(?:                      2(?:                        02?|                        [13]|                        2[13-79]|                        4[1-6]|                        5[2457]|                        6[124-8]|                        7[1-4]|                        8[13-6]|                        9[1267]                      )|                      3(?:                        02?|                        1[467]|                        2[03-6]|                        3[13-8]|                        [49][2-6]|                        5[2-8]|                        [67]                      )|                      4(?:                        7[3-578]|                        9                      )|                      6(?:                        [0136]|                        2[24-6]|                        4[6-8]?|                        5[15-8]                      )|                      80|                      9(?:                        0[1-3]|                        [19]|                        2\\d|                        3[1-6]|                        4[02568]?|                        5[2-4]|                        6[2-46]|                        72?|                        8[23]?                      )                    )|                    3(?:                      3(?:                        2[79]|                        6|                        8[2578]                      )|                      4(?:                        0[0-24-9]|                        [12]|                        3[5-8]?|                        4[24-7]|                        5[4-68]?|                        6[02-9]|                        7[126]|                        8[2379]?|                        9[1-36-8]                      )|                      5(?:                        1|                        2[1245]|                        3[237]?|                        4[1-46-9]|                        6[2-4]|                        7[1-6]|                        8[2-5]?                      )|                      6[24]|                      7(?:                        [069]|                        1[1568]|                        2[15]|                        3[145]|                        4[13]|                        5[14-8]|                        7[2-57]|                        8[126]                      )|                      8(?:                        [01]|                        2[15-7]|                        3[2578]?|                        4[13-6]|                        5[4-8]?|                        6[1-357-9]|                        7[36-8]?|                        8[5-8]?|                        9[124]                      )                    )                  )?15)?',
  'CountryCode'=>'AR',
  'nationalPrefixTransformRule'=>'9$1',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'54',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'11\\d{8}|[2368]\\d{9}|9\\d{10}'
                 },
  'uan'=>{
           'exampleNumber'=>'8101234567',
           'possibleLengths'=>{
                                'national'=>'10'
                              },
           'nationalNumberPattern'=>'810\\d{7}'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1-$2-$3',
                                                'pattern'=>'([68]\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[68]'
                                              },
                                              {
                                                'leadingDigits'=>'911',
                                                'pattern'=>'(9)(11)(\\d{4})(\\d{4})',
                                                'format'=>'$2 15-$3-$4',
                                                'intlFormat'=>'$1 $2 $3-$4'
                                              },
                                              {
                                                'leadingDigits'=>'9(?:2(?:2(?:0[013-9]|[13])|3(?:0[013-9]|[67])|49|6(?:[0136]|4[0-59])|8|9(?:[19]|44|7[013-9]|8[14]))|3(?:36|4(?:[12]|3(?:4|5[014]|6[1239])|[58]4)|5(?:1|3[0-24-689]|8[46])|6|7[069]|8(?:[01]|34|[578][45])))',
                                                'pattern'=>'(9)(\\d{3})(\\d{3})(\\d{4})',
                                                'format'=>'$2 15-$3-$4',
                                                'intlFormat'=>'$1 $2 $3-$4'
                                              },
                                              {
                                                'format'=>'$2 15-$3-$4',
                                                'intlFormat'=>'$1 $2 $3-$4',
                                                'leadingDigits'=>'9[23]',
                                                'pattern'=>'(9)(\\d{4})(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'1',
                                                'pattern'=>'(11)(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2-$3',
                                                'nationalPrefixOptionalWhenFormatting'=>'true'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'2(?:2(?:0[013-9]|[13])|3(?:0[013-9]|[67])|49|6(?:[0136]|4[0-59])|8|9(?:[19]|44|7[013-9]|8[14]))|3(?:36|4(?:[12]|3(?:4|5[014]|6[1239])|[58]4)|5(?:1|3[0-24-689]|8[46])|6|7[069]|8(?:[01]|34|[578][45]))',
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2-$3'
                                              },
                                              {
                                                'leadingDigits'=>'[23]',
                                                'pattern'=>'(\\d{4})(\\d{2})(\\d{4})',
                                                'format'=>'$1 $2-$3',
                                                'nationalPrefixOptionalWhenFormatting'=>'true'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'91123456789',
              'nationalNumberPattern'=>'675\\d{7}|9(?:11[2-9]\\d{7}|(?:2(?:2[013]|3[067]|49|6[01346]|80|9[147-9])|3(?:36|4[12358]|5[138]|6[24]|7[069]|8[013578]))[2-9]\\d{6}|\\d{4}[2-9]\\d{5})',
              'possibleLengths'=>{
                                   'localOnly'=>'[6-8]',
                                   'national'=>'10,11'
                                 }
            }
}
;
}

1;
