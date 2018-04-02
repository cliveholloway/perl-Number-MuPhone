package Number::MuPhone::Parser::TZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'noInternationalDialling'=>{
                               'exampleNumber'=>'800123456',
                               'nationalNumberPattern'=>'(?:8(?:[04]0|6[01])|90\\d)\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  }
                             },
  'internationalPrefix'=>'00[056]',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'900123456'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000CB/en'
                },
  'TerritoryName'=>'Tanzania',
  'fixedLine'=>{
                 'exampleNumber'=>'222345678',
                 'nationalNumberPattern'=>'2[2-8]\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'7,9'
                                    }
               },
  'nationalPrefix'=>'0',
  'sharedCost'=>{
                  'exampleNumber'=>'840123456',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8(?:40|6[01])\\d{6}'
                },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'80[08]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'CountryCode'=>'TZ',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'255',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[24]',
                                                'pattern'=>'([24]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'[67]',
                                                'pattern'=>'([67]\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'([89]\\d{2})(\\d{2})(\\d{4})',
                                                'leadingDigits'=>'[89]',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'621234567',
              'nationalNumberPattern'=>'(?:6[2-9]|7[13-9])\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'\\d{9}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'41\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'412345678'
          }
}
;
}

1;
