package Number::MuPhone::Parser::CN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'[10-12]'
                                                  },
                               'nationalNumberPattern'=>'(?:4|(?:10)?8)00\\d{7}|950\\d{7,8}',
                               'exampleNumber'=>'4001234567'
                             },
  'premiumRate'=>{
                   'exampleNumber'=>'16812345',
                   'nationalNumberPattern'=>'16[08]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'internationalPrefix'=>'(1(?:[129]\\d{3}|79\\d{2}))?00',
  'preferredInternationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002B/en'
                },
  'TerritoryName'=>'China',
  'fixedLine'=>{
                 'exampleNumber'=>'1012345678',
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'[7-12]'
                                    },
                 'nationalNumberPattern'=>'21(?:100\\d{2}|95\\d{3,4}|\\d{8,10})|(?:10|2[02-57-9]|3(?:11|7[179])|4(?:[15]1|3[1-35])|5(?:1\\d|2[37]|3[12]|51|7[13-79]|9[15])|7(?:31|5[457]|6[09]|91)|8(?:[57]1|98))(?:100\\d{2}|95\\d{3,4}|\\d{8})|(?:3(?:1[02-9]|35|49|5\\d|7[02-68]|9[1-68])|4(?:1[02-9]|2[179]|3[3-9]|5[2-9]|6[4789]|7\\d|8[23])|5(?:3[03-9]|4[36]|5[02-9]|6[1-46]|7[028]|80|9[2-46-9])|6(?:3[1-5]|6[0238]|9[12])|7(?:01|[17]\\d|2[248]|3[04-9]|4[3-6]|5[0-4689]|6[2368]|9[02-9])|8(?:078|1[236-8]|2[5-7]|3\\d|5[1-9]|7[02-9]|8[3678]|9[1-7])|9(?:0[1-3689]|1[1-79]|[379]\\d|4[13]|5[1-5]))(?:100\\d{2}|95\\d{3,4}|\\d{7})|80(?:29|6[03578]|7[018]|81)\\d{4}'
               },
  'nationalPrefix'=>'0',
  'sharedCost'=>{
                  'exampleNumber'=>'4001234567',
                  'possibleLengths'=>{
                                       'localOnly'=>'5,6',
                                       'national'=>'[7-11]'
                                     },
                  'nationalNumberPattern'=>'400\\d{7}|950\\d{7,8}|(?:10|2[0-57-9]|3(?:[157]\\d|35|49|9[1-68])|4(?:[17]\\d|2[179]|[35][1-9]|6[4789]|8[23])|5(?:[1357]\\d|2[37]|4[36]|6[1-46]|80|9[1-9])|6(?:3[1-5]|6[0238]|9[12])|7(?:01|[1579]\\d|2[248]|3[014-9]|4[3-6]|6[023689])|8(?:1[236-8]|2[5-7]|[37]\\d|5[14-9]|8[3678]|9[1-8])|9(?:0[1-3689]|1[1-79]|[379]\\d|4[13]|5[1-5]))96\\d{3,4}'
                },
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'possibleLengths'=>{
                                     'national'=>'10,12'
                                   },
                'nationalNumberPattern'=>'(?:10)?800\\d{7}'
              },
  'CountryCode'=>'CN',
  'nationalPrefixForParsing'=>'(1(?:[129]\\d{3}|79\\d{2}))|0',
  'countryCode'=>'86',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'pattern'=>'(80\\d{2})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'80[2678]'
                                              },
                                              {
                                                'leadingDigits'=>'[48]00',
                                                'pattern'=>'([48]00)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'(?:10|2\\d)(?:100|9[56])',
                                                'pattern'=>'(\\d{2})(\\d{5,6})',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[3-9]\\d{2}(?:10|9[56])',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'pattern'=>'(\\d{3})(\\d{5,6})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'pattern'=>'(21)(\\d{4})(\\d{4,6})',
                                                'leadingDigits'=>'21'
                                              },
                                              {
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'([12]\\d)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'10(?:[1-79]|8(?:[1-9]|0[1-9]))|2[02-9]',
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2 $3',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'3(?:1[02-9]|35|49|5|7[02-68]|9[1-68])|4(?:1[02-9]|2[179]|[35][2-9]|6[4789]|7\\d|8[23])|5(?:3[03-9]|4[36]|5[02-9]|6[1-46]|7[028]|80|9[2-46-9])|6(?:3[1-5]|6[0238]|9[12])|7(?:01|[1579]|2[248]|3[04-9]|4[3-6]|6[2368])|8(?:1[236-8]|2[5-7]|3|5[1-9]|7[02-9]|8[3678]|9[1-7])|9(?:0[1-3689]|1[1-79]|[379]|4[13]|5[1-5])'
                                              },
                                              {
                                                'leadingDigits'=>'3(?:11|7[179])|4(?:[15]1|3[1-35])|5(?:1|2[37]|3[12]|51|7[13-79]|9[15])|7(?:31|5[457]|6[09]|91)|8(?:[57]1|98)',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'pattern'=>'(\\d{3})(\\d{4})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixOptionalWhenFormatting'=>'true'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d{3})(\\d{4})',
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'8078',
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'carrierCodeFormattingRule'=>'$CC $FG',
                                                'pattern'=>'(\\d{3})(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'1[3-578]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(10800)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'10800',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'950',
                                                'pattern'=>'(\\d{3})(\\d{7,8})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'13123456789',
              'possibleLengths'=>{
                                   'national'=>'11'
                                 },
              'nationalNumberPattern'=>'1(?:[38]\\d|4[57]|5[0-35-9]|7[0-35-8])\\d{8}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{6,11}|8[0-357-9]\\d{6,9}|9\\d{7,10}'
                 }
}
;
}

1;
