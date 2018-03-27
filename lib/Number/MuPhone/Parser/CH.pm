package Number::MuPhone::Parser::CH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'countryCode'=>'41',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7[5-9]\\d{7}',
              'exampleNumber'=>'781234567'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.bakom.admin.ch/themen/telekom/00479/00604/index.html?lang=en'
                },
  'personalNumber'=>{
                      'exampleNumber'=>'878123456',
                      'nationalNumberPattern'=>'878\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         }
                    },
  'premiumRate'=>{
                   'exampleNumber'=>'900123456',
                   'nationalNumberPattern'=>'90[016]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'12'
                                    },
                 'nationalNumberPattern'=>'860\\d{9}',
                 'exampleNumber'=>'860123456789'
               },
  'CountryCode'=>'CH',
  'TerritoryName'=>'Switzerland',
  'uan'=>{
           'nationalNumberPattern'=>'5[18]\\d{7}',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'exampleNumber'=>'581234567'
         },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'84[0248]\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'exampleNumber'=>'840123456'
                },
  'pager'=>{
             'exampleNumber'=>'740123456',
             'possibleLengths'=>{
                                  'national'=>'9'
                                },
             'nationalNumberPattern'=>'74[0248]\\d{6}'
           },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{8}|860\\d{9}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-9]\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[2-7]|[89]1'
                                              },
                                              {
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'8[047]|90',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'860',
                                                'format'=>'$1 $2 $3 $4 $5',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'212345678',
                 'nationalNumberPattern'=>'(?:2[12467]|3[1-4]|4[134]|5[256]|6[12]|[7-9]1)\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               }
}
;
}

1;
