package Number::MuPhone::Parser::NG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'countryCode'=>'234',
  'fixedLine'=>{
                 'exampleNumber'=>'12345678',
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'7,8'
                                    },
                 'nationalNumberPattern'=>'[12]\\d{6,7}|9(?:0[3-9]|[1-9]\\d)\\d{5}|(?:3\\d|4[023568]|5[02368]|6[02-469]|7[4-69]|8[2-9])\\d{6}|(?:4[47]|5[14579]|6[1578]|7[0-357])\\d{5,6}|(?:78|41)\\d{5}'
               },
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'uan'=>{
           'nationalNumberPattern'=>'700\\d{7,11}',
           'possibleLengths'=>{
                                'national'=>'[10-14]'
                              },
           'exampleNumber'=>'7001234567'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-6]\\d{5,8}|9\\d{5,9}|[78]\\d{5,13}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:1(?:7[34]\\d|8(?:04|[124579]\\d|8[0-3])|95\\d)|287[0-7]|3(?:18[1-8]|88[0-7]|9(?:8[5-9]|6[1-5]))|4(?:28[0-2]|6(?:7[1-9]|8[02-47])|88[0-2])|5(?:2(?:7[7-9]|8\\d)|38[1-79]|48[0-7]|68[4-7])|6(?:2(?:7[7-9]|8\\d)|4(?:3[7-9]|[68][129]|7[04-69]|9[1-8])|58[0-2]|98[7-9])|7(?:38[0-7]|69[1-8]|78[2-4])|8(?:28[3-9]|38[0-2]|4(?:2[12]|3[147-9]|5[346]|7[4-9]|8[014-689]|90)|58[1-8]|78[2-9]|88[5-7])|98[07]\\d)\\d{4}|(?:70(?:[1-689]\\d|7[0-3])|8(?:0(?:1[01]|[2-9]\\d)|1(?:[0-8]\\d|9[01]))|90[235-9]\\d)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8,10'
                                 },
              'exampleNumber'=>'8021234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[12]|9(?:0[3-9]|[1-9])',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2,3})',
                                                'leadingDigits'=>'[3-6]|7(?:[1-79]|0[1-9])|8[2-9]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'70|8[01]|90[235-9]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([78]00)(\\d{4})(\\d{4,5})',
                                                'leadingDigits'=>'[78]00'
                                              },
                                              {
                                                'pattern'=>'([78]00)(\\d{5})(\\d{5,6})',
                                                'leadingDigits'=>'[78]00',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'78',
                                                'pattern'=>'(78)(\\d{2})(\\d{3})'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'80017591759',
                'possibleLengths'=>{
                                     'national'=>'[10-14]'
                                   },
                'nationalNumberPattern'=>'800\\d{7,11}'
              },
  'internationalPrefix'=>'009',
  'TerritoryName'=>'Nigeria',
  'CountryCode'=>'NG',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200009C/en',
                                 'http://www.ncc.gov.ng/index.php/index.php?option=com_content&view=article&id=113&Itemid=102'
                               ]
                }
}
;
}

1;
