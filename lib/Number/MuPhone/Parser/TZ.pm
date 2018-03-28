package Number::MuPhone::Parser::TZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'800123456',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  },
                               'nationalNumberPattern'=>'(?:8(?:[04]0|6[01])|90\\d)\\d{6}'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'\\d{9}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'80[08]\\d{6}',
                'exampleNumber'=>'800123456'
              },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[24]',
                                                'pattern'=>'([24]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'[67]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([67]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'[89]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([89]\\d{2})(\\d{2})(\\d{4})'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'222345678',
                 'possibleLengths'=>{
                                      'national'=>'7,9'
                                    },
                 'nationalNumberPattern'=>'2[2-8]\\d{7}'
               },
  'countryCode'=>'255',
  'internationalPrefix'=>'00[056]',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000CB/en'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:6[2-9]|7[13-9])\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'621234567'
            },
  'premiumRate'=>{
                   'exampleNumber'=>'900123456',
                   'nationalNumberPattern'=>'90\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'41\\d{7}',
            'exampleNumber'=>'412345678'
          },
  'CountryCode'=>'TZ',
  'TerritoryName'=>'Tanzania',
  'sharedCost'=>{
                  'exampleNumber'=>'840123456',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8(?:40|6[01])\\d{6}'
                }
}
;
}

1;
