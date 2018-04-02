package Number::MuPhone::Parser::BR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'1123456789',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:[14689][1-9]|2[12478]|3[1-578]|5[13-5]|7[13-579])[2-5]\\d{7}'
               },
  'nationalPrefix'=>'0',
  'TerritoryName'=>'Brazil',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B55',
                                 'http://www.itu.int/oth/T020200001D/en'
                               ]
                },
  'premiumRate'=>{
                   'exampleNumber'=>'300123456',
                   'possibleLengths'=>{
                                        'national'=>'9,10'
                                      },
                   'nationalNumberPattern'=>'(?:300|[59]00\\d?)\\d{6}'
                 },
  'internationalPrefix'=>'00(?:1[245]|2[1-35]|31|4[13]|[56]5|99)',
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'(?:300\\d|40(?:0\\d|20))\\d{4}',
                               'exampleNumber'=>'40041234'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-46-9]\\d{7,10}|5(?:[0-4]\\d{7,9}|5(?:[2-8]\\d{7}|9\\d{7,8}))'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1-$2',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'(?:300|40(?:0|20))'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'([3589]00)(\\d{2,3})(\\d{4})',
                                                'leadingDigits'=>'[3589]00',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2-$3',
                                                'pattern'=>'(\\d{2})(\\d{4})(\\d{4})',
                                                'carrierCodeFormattingRule'=>'$NP $CC ($FG)',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'leadingDigits'=>'[1-9][1-9]'
                                              },
                                              {
                                                'format'=>'$1 $2-$3',
                                                'leadingDigits'=>'[1-9][1-9]9',
                                                'carrierCodeFormattingRule'=>'$NP $CC ($FG)',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'pattern'=>'(\\d{2})(\\d{5})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'11961234567',
              'possibleLengths'=>{
                                   'national'=>'10,11',
                                   'localOnly'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:[189][1-9]|2[12478])(?:7|9\\d)\\d{7}|(?:3[1-578]|[46][1-9]|5[13-5]|7[13-579])(?:[6-8]|9\\d?)\\d{7}'
            },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'55',
  'nationalPrefixForParsing'=>'0(?:(1[245]|2[1-35]|31|4[13]|[56]5|99)(\\d{10,11}))?',
  'CountryCode'=>'BR',
  'nationalPrefixTransformRule'=>'$2',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9,10'
                                   },
                'nationalNumberPattern'=>'800\\d{6,7}',
                'exampleNumber'=>'800123456'
              },
  'sharedCost'=>{
                  'exampleNumber'=>'40041234',
                  'possibleLengths'=>{
                                       'national'=>'8,10'
                                     },
                  'nationalNumberPattern'=>'(?:300\\d(?:\\d{2})?|40(?:0\\d|20))\\d{4}'
                }
}
;
}

1;
