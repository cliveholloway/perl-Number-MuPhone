package Number::MuPhone::Parser::AU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200000D/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Australia',
                                 'https://www.thenumberingsystem.com.au/#/number-register/search'
                               ]
                },
  'preferredInternationalPrefix'=>'0011',
  'TerritoryName'=>'Australia',
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'1(?:3(?:00\\d{3}|45[0-4]|\\d)\\d{3}|80(?:0\\d{6}|2\\d{3}))',
                               'possibleLengths'=>{
                                                    'national'=>'[6-8],10'
                                                  },
                               'exampleNumber'=>'1300123456'
                             },
  'internationalPrefix'=>'(?:14(?:1[14]|34|4[17]|[56]6|7[47]|88)0011)|001[14-689]',
  'premiumRate'=>{
                   'exampleNumber'=>'1900123456',
                   'nationalNumberPattern'=>'19(?:0[0126]\\d|[679])\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8,10'
                                      }
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'212345678',
                 'possibleLengths'=>{
                                      'localOnly'=>'8',
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'[237]\\d{8}|8(?:[6-8]\\d{3}|9(?:[02-9]\\d{2}|1(?:[0-57-9]\\d|6[0135-9])))\\d{4}'
               },
  'CountryCode'=>'AU',
  'sharedCost'=>{
                  'exampleNumber'=>'1300123456',
                  'possibleLengths'=>{
                                       'national'=>'6,8,10'
                                     },
                  'nationalNumberPattern'=>'13(?:00\\d{3}|45[0-4]|\\d)\\d{3}'
                },
  'personalNumber'=>{
                      'exampleNumber'=>'500123456',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'500\\d{6}'
                    },
  'tollFree'=>{
                'exampleNumber'=>'1800123456',
                'possibleLengths'=>{
                                     'national'=>'7,10'
                                   },
                'nationalNumberPattern'=>'180(?:0\\d{3}|2)\\d{3}'
              },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'14(?:5\\d|71)\\d{5}|4(?:[0-3]\\d|4[47-9]|5[0-25-9]|6[6-9]|7[02-9]|8[147-9]|9[017-9])\\d{6}',
              'exampleNumber'=>'412345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([2378])(\\d{4})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'leadingDigits'=>'[2378]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[45]|14'
                                              },
                                              {
                                                'leadingDigits'=>'16',
                                                'pattern'=>'(16)(\\d{3,4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(16)(\\d{3})(\\d{2,4})',
                                                'leadingDigits'=>'16'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1(?:[38]00|90)',
                                                'pattern'=>'(1[389]\\d{2})(\\d{3})(\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              },
                                              {
                                                'pattern'=>'(180)(2\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'1802',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(19\\d)(\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'19[13]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(19\\d{2})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'19[679]'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(13)(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'13[1-9]',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'550123456',
            'nationalNumberPattern'=>'550\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'mainCountryForCode'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{4,9}|[2-578]\\d{8}'
                 },
  'countryCode'=>'61',
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'exampleNumber'=>'1612345',
             'nationalNumberPattern'=>'16\\d{3,7}',
             'possibleLengths'=>{
                                  'national'=>'[5-9]'
                                }
           }
}
;
}

1;
