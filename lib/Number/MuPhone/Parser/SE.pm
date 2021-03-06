package Number::MuPhone::Parser::SE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1(?:0[1-8]\\d{6}|[136]\\d{5,7}|(?:2[0-35]|4[0-4]|5[0-25-9]|7[13-6]|[89]\\d)\\d{5,6})|2(?:[136]\\d{5,7}|(?:2[0-7]|4[0136-8]|5[0138]|7[018]|8[01]|9[0-57])\\d{5,6})|3(?:[356]\\d{5,7}|(?:0[0-4]|1\\d|2[0-25]|4[056]|7[0-2]|8[0-3]|9[023])\\d{5,6})|4(?:[0246]\\d{5,7}|(?:1[013-8]|3[0135]|5[14-79]|7[0-246-9]|8[0156]|9[0-689])\\d{5,6})|5(?:0[0-6]|[15][0-5]|2[0-68]|3[0-4]|4\\d|6[03-5]|7[013]|8[0-79]|9[01])\\d{5,6}|6(?:[03]\\d{5,7}|(?:1[1-3]|2[0-4]|4[02-57]|5[0-37]|6[0-3]|7[0-2]|8[0247]|9[0-356])\\d{5,6})|8\\d{6,8}|9(?:0[1-9]\\d{4,6}|(?:1[0-68]|2\\d|3[02-5]|4[0-3]|5[0-4]|[68][01]|7[0135-8])\\d{5,6})',
                 'possibleLengths'=>{
                                      'national'=>'[7-9]'
                                    },
                 'exampleNumber'=>'8123456'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.pts.se/upload/Ovrigt/Tele/Nummerfragor/swedish-numbering-plan-for-telephony-acc-itu-140407.pdf'
                },
  'voicemail'=>{
                 'nationalNumberPattern'=>'(?:25[245]|67[3-6])\\d{9}',
                 'possibleLengths'=>{
                                      'national'=>'12'
                                    },
                 'exampleNumber'=>'254123456789'
               },
  'TerritoryName'=>'Sweden',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'[7-10]'
                                      },
                   'nationalNumberPattern'=>'649\\d{6}|9(?:00|39|44)[1-8]\\d{3,6}',
                   'exampleNumber'=>'9001234567'
                 },
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'701234567',
              'nationalNumberPattern'=>'7[02369]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'format'=>'$1-$2 $3 $4',
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(8)(\\d{2,3})(\\d{2,3})(\\d{2})'
                                              },
                                              {
                                                'leadingDigits'=>'1[013689]|2[0136]|3[1356]|4[0246]|54|6[03]|90',
                                                'pattern'=>'([1-69]\\d)(\\d{2,3})(\\d{2})(\\d{2})',
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'format'=>'$1-$2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1-$2 $3',
                                                'intlFormat'=>'$1 $2 $3',
                                                'leadingDigits'=>'1[136]|2[136]|3[356]|4[0246]|6[03]|90',
                                                'pattern'=>'([1-469]\\d)(\\d{3})(\\d{2})'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'format'=>'$1-$2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'1[2457]|2(?:[247-9]|5[0138])|3[0247-9]|4[1357-9]|5[0-35-9]|6(?:[124-689]|7[0-2])|9(?:[125-8]|3[0-5]|4[0-3])'
                                              },
                                              {
                                                'leadingDigits'=>'1[2457]|2(?:[247-9]|5[0138])|3[0247-9]|4[1357-9]|5[0-35-9]|6(?:[124-689]|7[0-2])|9(?:[125-8]|3[0-5]|4[0-3])',
                                                'pattern'=>'(\\d{3})(\\d{2,3})(\\d{2})',
                                                'format'=>'$1-$2 $3',
                                                'intlFormat'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'7',
                                                'pattern'=>'(7\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1-$2 $3 $4',
                                                'intlFormat'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3',
                                                'format'=>'$1-$2$3',
                                                'pattern'=>'(77)(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'7'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3',
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'20',
                                                'pattern'=>'(20)(\\d{2,3})(\\d{2})'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'format'=>'$1-$2 $3 $4',
                                                'leadingDigits'=>'9[034]',
                                                'pattern'=>'(9[034]\\d)(\\d{2})(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(9[034]\\d)(\\d{4})',
                                                'leadingDigits'=>'9[034]',
                                                'format'=>'$1-$2',
                                                'intlFormat'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'25[245]|67[3-6]',
                                                'intlFormat'=>'$1 $2 $3 $4 $5',
                                                'format'=>'$1-$2 $3 $4 $5'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-35-9]\\d{5,11}|4\\d{6,8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'46',
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'nationalNumberPattern'=>'74[02-9]\\d{6}',
             'possibleLengths'=>{
                                  'national'=>'9'
                                },
             'exampleNumber'=>'740123456'
           },
  'CountryCode'=>'SE',
  'sharedCost'=>{
                  'exampleNumber'=>'771234567',
                  'possibleLengths'=>{
                                       'national'=>'6,9'
                                     },
                  'nationalNumberPattern'=>'77(?:0\\d{3}(?:\\d{3})?|[1-7]\\d{6})'
                },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'75[1-8]\\d{6}',
                      'exampleNumber'=>'751234567'
                    },
  'tollFree'=>{
                'exampleNumber'=>'20123456',
                'possibleLengths'=>{
                                     'national'=>'[6-9]'
                                   },
                'nationalNumberPattern'=>'20\\d{4,7}'
              }
}
;
}

1;
