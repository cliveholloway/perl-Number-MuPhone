package Number::MuPhone::Parser::AU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'212345678',
                 'nationalNumberPattern'=>'[237]\\d{8}|8(?:[6-8]\\d{3}|9(?:[02-9]\\d{2}|1(?:[0-57-9]\\d|6[0135-9])))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'8'
                                    }
               },
  'nationalPrefix'=>'0',
  'preferredInternationalPrefix'=>'0011',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'([2378])(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2378]'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[45]|14'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(16)(\\d{3,4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'16'
                                              },
                                              {
                                                'leadingDigits'=>'16',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(16)(\\d{3})(\\d{2,4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG'
                                              },
                                              {
                                                'leadingDigits'=>'1(?:[38]00|90)',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1[389]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1802',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(180)(2\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'19[13]',
                                                'format'=>'$1 $2',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(19\\d)(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(19\\d{2})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'19[679]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'13[1-9]',
                                                'pattern'=>'(13)(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7,10'
                                   },
                'nationalNumberPattern'=>'180(?:0\\d{3}|2)\\d{3}',
                'exampleNumber'=>'1800123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{4,9}|[2-578]\\d{8}'
                 },
  'mainCountryForCode'=>'true',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'1300123456',
                               'possibleLengths'=>{
                                                    'national'=>'[6-8],10'
                                                  },
                               'nationalNumberPattern'=>'1(?:3(?:00\\d{3}|45[0-4]|\\d)\\d{3}|80(?:0\\d{6}|2\\d{3}))'
                             },
  'pager'=>{
             'possibleLengths'=>{
                                  'national'=>'[5-9]'
                                },
             'nationalNumberPattern'=>'16\\d{3,7}',
             'exampleNumber'=>'1612345'
           },
  'sharedCost'=>{
                  'exampleNumber'=>'1300123456',
                  'possibleLengths'=>{
                                       'national'=>'6,8,10'
                                     },
                  'nationalNumberPattern'=>'13(?:00\\d{3}|45[0-4]|\\d)\\d{3}'
                },
  'CountryCode'=>'AU',
  'TerritoryName'=>'Australia',
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'550\\d{6}',
            'exampleNumber'=>'550123456'
          },
  'premiumRate'=>{
                   'exampleNumber'=>'1900123456',
                   'nationalNumberPattern'=>'19(?:0[0126]\\d|[679])\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8,10'
                                      }
                 },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'500\\d{6}',
                      'exampleNumber'=>'500123456'
                    },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200000D/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Australia',
                                 'https://www.thenumberingsystem.com.au/#/number-register/search'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'412345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'14(?:5\\d|71)\\d{5}|4(?:[0-3]\\d|4[47-9]|5[0-25-9]|6[6-9]|7[02-9]|8[147-9]|9[017-9])\\d{6}'
            },
  'internationalPrefix'=>'(?:14(?:1[14]|34|4[17]|[56]6|7[47]|88)0011)|001[14-689]',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'61'
}
;
}

1;
