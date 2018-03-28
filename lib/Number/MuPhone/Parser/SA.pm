package Number::MuPhone::Parser::SA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'112345678',
                 'possibleLengths'=>{
                                      'national'=>'8,9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'11\\d{7}|1?(?:2[24-8]|3[35-8]|4[3-68]|6[2-5]|7[235-7])\\d{6}'
               },
  'sharedCost'=>{
                  'exampleNumber'=>'920012345',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'92[05]\\d{6}'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'966',
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9,10'
                                 },
              'nationalNumberPattern'=>'(?:5(?:[013-689]\\d|7[0-26-8])|811\\d)\\d{6}',
              'exampleNumber'=>'512345678'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Saudi_Arabia',
                                 'http://www.itu.int/oth/T02020000B7/en'
                               ]
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}',
                'exampleNumber'=>'8001234567'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{7,8}|(?:[2-467]|92)\\d{7}|5\\d{8}|8\\d{9}'
                 },
  'TerritoryName'=>'Saudi Arabia',
  'CountryCode'=>'SA',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([1-467])(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[1-467]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1[1-467]',
                                                'pattern'=>'(1\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(5\\d)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'5',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'92',
                                                'format'=>'$1 $2',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(92\\d{2})(\\d{5})'
                                              },
                                              {
                                                'leadingDigits'=>'80',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(800)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'81',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(811)(\\d{3})(\\d{3,4})'
                                              }
                                            ]
                        }
}
;
}

1;
