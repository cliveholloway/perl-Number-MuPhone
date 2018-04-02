package Number::MuPhone::Parser::CH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'212345678',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'(?:2[12467]|3[1-4]|4[134]|5[256]|6[12]|[7-9]1)\\d{7}'
               },
  'nationalPrefix'=>'0',
  'premiumRate'=>{
                   'exampleNumber'=>'900123456',
                   'nationalNumberPattern'=>'90[016]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Switzerland',
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'12'
                                    },
                 'nationalNumberPattern'=>'860\\d{9}',
                 'exampleNumber'=>'860123456789'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.bakom.admin.ch/themen/telekom/00479/00604/index.html?lang=en'
                },
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'nationalNumberPattern'=>'74[0248]\\d{6}',
             'possibleLengths'=>{
                                  'national'=>'9'
                                },
             'exampleNumber'=>'740123456'
           },
  'countryCode'=>'41',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{8}|860\\d{9}'
                 },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'5[18]\\d{7}',
           'exampleNumber'=>'581234567'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[2-7]|[89]1',
                                                'pattern'=>'([2-9]\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'leadingDigits'=>'8[047]|90',
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4 $5',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'860'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'781234567',
              'nationalNumberPattern'=>'7[5-9]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}'
              },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'878\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'exampleNumber'=>'878123456'
                    },
  'sharedCost'=>{
                  'exampleNumber'=>'840123456',
                  'nationalNumberPattern'=>'84[0248]\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     }
                },
  'CountryCode'=>'CH'
}
;
}

1;
