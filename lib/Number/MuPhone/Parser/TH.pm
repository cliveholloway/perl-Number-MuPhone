package Number::MuPhone::Parser::TH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'21234567',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:2\\d|3[2-9]|4[2-5]|5[2-6]|7[3-7])\\d{6}'
               },
  'nationalPrefix'=>'0',
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'4'
                                                  },
                               'nationalNumberPattern'=>'1\\d{3}',
                               'exampleNumber'=>'1100'
                             },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'1900\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'1900123456'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000CD/en',
                                 'http://www.barascientific.com/bscnews/variety/emergency/Tel-4Digi.pdf'
                               ]
                },
  'TerritoryName'=>'Thailand',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'66',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(2)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'2'
                                              },
                                              {
                                                'leadingDigits'=>'14|[3-9]',
                                                'pattern'=>'([13-9]\\d)(\\d{3})(\\d{3,4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1[89]00)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:14|6[1-6]|[89]\\d)\\d{7}',
              'exampleNumber'=>'812345678'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7,8}|1\\d{3}(?:\\d{5,6})?'
                 },
  'uan'=>{
           'nationalNumberPattern'=>'1\\d{3}',
           'possibleLengths'=>{
                                'national'=>'4'
                              },
           'exampleNumber'=>'1100'
         },
  'voip'=>{
            'nationalNumberPattern'=>'6[08]\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'601234567'
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'1800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'1800123456'
              },
  'CountryCode'=>'TH'
}
;
}

1;
