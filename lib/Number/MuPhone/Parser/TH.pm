package Number::MuPhone::Parser::TH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'TH',
  'TerritoryName'=>'Thailand',
  'voip'=>{
            'exampleNumber'=>'601234567',
            'nationalNumberPattern'=>'6[08]\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'1900\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'1900123456'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000CD/en',
                                 'http://www.barascientific.com/bscnews/variety/emergency/Tel-4Digi.pdf'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'812345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:14|6[1-6]|[89]\\d)\\d{7}'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'66',
  'mobileNumberPortableRegion'=>'true',
  'uan'=>{
           'nationalNumberPattern'=>'1\\d{3}',
           'possibleLengths'=>{
                                'national'=>'4'
                              },
           'exampleNumber'=>'1100'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(2)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2'
                                              },
                                              {
                                                'pattern'=>'([13-9]\\d)(\\d{3})(\\d{3,4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'14|[3-9]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1[89]00)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'1800123456',
                'nationalNumberPattern'=>'1800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7,8}|1\\d{3}(?:\\d{5,6})?'
                 },
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'4'
                                                  },
                               'nationalNumberPattern'=>'1\\d{3}',
                               'exampleNumber'=>'1100'
                             },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'21234567',
                 'nationalNumberPattern'=>'(?:2\\d|3[2-9]|4[2-5]|5[2-6]|7[3-7])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'nationalPrefix'=>'0'
}
;
}

1;
