package Number::MuPhone::Parser::IR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'(?:[2-6]0\\d|993)\\d{7}',
            'exampleNumber'=>'9932123456'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-8]\\d{5,9}|9(?:[0-4]\\d{8}|9\\d{8})'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'9(?:0[1-3]\\d{2}|[1-3]\\d{3}|9(?:0\\d{2}|44\\d|810|9(?:00|11|9[89])))\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'9123456789'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[1-8]',
                                                'pattern'=>'(\\d{2})(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'[1-8]',
                                                'pattern'=>'(\\d{2})(\\d{4,5})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'9',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})'
                                              }
                                            ]
                        },
  'countryCode'=>'98',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:(?:1[137]|2[13-68]|3[1458]|4[145]|5[1468]|6[16]|7[1467]|8[13467])(?:\\d{8}|(?:[16]|[289]\\d?)\\d{3}))|94(?:000|11[1-7]|2\\d{2}|440)\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'4,5,8',
                                      'national'=>'6,7,10'
                                    },
                 'exampleNumber'=>'2123456789'
               },
  'pager'=>{
             'nationalNumberPattern'=>'943\\d{7}',
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'exampleNumber'=>'9432123456'
           },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'TerritoryName'=>'Iran, Islamic Republic of',
  'CountryCode'=>'IR',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B98',
                                 'http://www.itu.int/oth/T0202000066/en',
                                 'http://www.tct.ir/?siteid=1&pageid=195',
                                 'http://118.tct.ir/citycode.htm'
                               ]
                },
  'internationalPrefix'=>'00',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'9411110000',
                               'possibleLengths'=>{
                                                    'national'=>'10'
                                                  },
                               'nationalNumberPattern'=>'(?:9411[1-7]|94440)\\d{5}'
                             }
}
;
}

1;
