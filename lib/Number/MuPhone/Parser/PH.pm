package Number::MuPhone::Parser::PH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://en.wikipedia.org/wiki/%2B63'
                },
  'mobile'=>{
              'exampleNumber'=>'9051234567',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'(?:81[37]|9(?:0[5-9]|1[024-9]|2[0-35-9]|3[02-9]|4[235-9]|5[056]|6[5-7]|7[34-79]|89|9[4-9]))\\d{7}'
            },
  'countryCode'=>'63',
  'internationalPrefix'=>'00',
  'CountryCode'=>'PH',
  'TerritoryName'=>'Philippines',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'2',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(2)(\\d{3})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)'
                                              },
                                              {
                                                'pattern'=>'(2)(\\d{5})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2'
                                              },
                                              {
                                                'leadingDigits'=>'3(?:230|397|461)|4(?:2(?:35|[46]4|51)|396|4(?:22|63)|59[347]|76[15])|5(?:221|446)|642[23]|8(?:622|8(?:[24]2|5[13]))',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{4,6})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)'
                                              },
                                              {
                                                'pattern'=>'(\\d{5})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'leadingDigits'=>'3469|4(?:279|9(?:30|56))|8834',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'([3-8]\\d)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[3-8]'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'81|9'
                                              },
                                              {
                                                'pattern'=>'(1800)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'1',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(1800)(\\d{1,2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'1'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'180012345678',
                'nationalNumberPattern'=>'1800\\d{7,9}',
                'possibleLengths'=>{
                                     'national'=>'[11-13]'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'2\\d{5,7}|[3-9]\\d{7,9}|1800\\d{7,9}'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'5,7',
                                      'national'=>'6,[8-10]'
                                    },
                 'nationalNumberPattern'=>'2\\d{5}(?:\\d{2})?|(?:3[2-68]|4[2-9]|5[2-6]|6[2-58]|7[24578]|8[2-8])\\d{7}|88(?:22\\d{6}|42\\d{4})',
                 'exampleNumber'=>'21234567'
               }
}
;
}

1;
