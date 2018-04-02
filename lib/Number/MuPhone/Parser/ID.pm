package Number::MuPhone::Parser::ID;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'62',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[1-79]\\d{6,10}|8\\d{7,11})'
                 },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'7,10'
                              },
           'nationalNumberPattern'=>'1500\\d{3}|8071\\d{6}',
           'exampleNumber'=>'8071123456'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2[124]|[36]1',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'(\\d{2})(\\d{5,8})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'(\\d{3})(\\d{5,8})',
                                                'leadingDigits'=>'[4579]|2[035-9]|[36][02-9]'
                                              },
                                              {
                                                'pattern'=>'(8\\d{2})(\\d{3,4})(\\d{3})',
                                                'leadingDigits'=>'8[1-35-9]',
                                                'format'=>'$1-$2-$3'
                                              },
                                              {
                                                'format'=>'$1-$2-$3',
                                                'leadingDigits'=>'8[1-35-9]',
                                                'pattern'=>'(8\\d{2})(\\d{4})(\\d{4,5})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'15',
                                                'pattern'=>'(1)(500)(\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'17',
                                                'pattern'=>'(177)(\\d{6,8})'
                                              },
                                              {
                                                'leadingDigits'=>'800',
                                                'pattern'=>'(800)(\\d{5,7})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(804)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'804',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'80[79]',
                                                'pattern'=>'(80\\d)(\\d)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:2(?:1(?:3[145]|4[01]|5[1-469]|60|8[0359]|9\\d)|2(?:88|9[1256])|3[1-4]9|4(?:36|91)|5(?:1[349]|[2-4]9)|6[0-7]9|7(?:[1-36]9|4[39])|8[1-5]9|9[1-48]9)|3(?:19[1-3]|2[12]9|3[13]9|4(?:1[69]|39)|5[14]9|6(?:1[69]|2[89])|709)|4[13]19|5(?:1(?:19|8[39])|4[129]9|6[12]9)|6(?:19[12]|2(?:[23]9|77))|7(?:1[13]9|2[15]9|419|5(?:1[89]|29)|6[15]9|7[178]9))\\d{5,6}|8[1-35-9]\\d{7,10}',
              'possibleLengths'=>{
                                   'national'=>'[9-12]'
                                 },
              'exampleNumber'=>'812345678'
            },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'[8-11]'
                                   },
                'nationalNumberPattern'=>'177\\d{6,8}|800\\d{5,7}',
                'exampleNumber'=>'8001234567'
              },
  'sharedCost'=>{
                  'exampleNumber'=>'8041234567',
                  'nationalNumberPattern'=>'804\\d{7}',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     }
                },
  'CountryCode'=>'ID',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:1(?:14\\d{3}|[0-8]\\d{6,7}|500\\d{3}|9\\d{6})|2\\d{6,8}|4\\d{7,8})|(?:2(?:[35][1-4]|6[0-8]|7[1-6]|8\\d|9[1-8])|3(?:1|[25][1-8]|3[1-68]|4[1-3]|6[1-3568]|7[0-469]|8\\d)|4(?:0[1-589]|1[01347-9]|2[0-36-8]|3[0-24-68]|43|5[1-378]|6[1-5]|7[134]|8[1245])|5(?:1[1-35-9]|2[25-8]|3[124-9]|4[1-3589]|5[1-46]|6[1-8])|6(?:19?|[25]\\d|3[1-69]|4[1-6])|7(?:02|[125][1-9]|[36]\\d|4[1-8]|7[0-36-9])|9(?:0[12]|1[013-8]|2[0-479]|5[125-8]|6[23679]|7[159]|8[01346]))\\d{5,8}',
                 'possibleLengths'=>{
                                      'national'=>'[7-11]',
                                      'localOnly'=>'5,6'
                                    },
                 'exampleNumber'=>'612345678'
               },
  'nationalPrefix'=>'0',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'809\\d{7}',
                   'exampleNumber'=>'8091234567'
                 },
  'internationalPrefix'=>'0(?:0[1789]|10(?:00|1[67]))',
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'8071\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'10'
                                                  },
                               'exampleNumber'=>'8071123456'
                             },
  'TerritoryName'=>'Indonesia',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000064/en',
                                 'http://en.wikipedia.org/wiki/%2B62'
                               ]
                }
}
;
}

1;
