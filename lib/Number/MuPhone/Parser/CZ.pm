package Number::MuPhone::Parser::CZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2-8]|9[015-7]',
                                                'pattern'=>'([2-9]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(96\\d)(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'96'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(9\\d)(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'9[36]'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:60[1-8]|7(?:0[2-5]|[2379]\\d))\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'601123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{8}|9\\d{8,11}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'9[17]0\\d{6}',
            'exampleNumber'=>'910123456'
          },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'9(?:5\\d|7[234])\\d{6}',
           'exampleNumber'=>'972123456'
         },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'420',
  'CountryCode'=>'CZ',
  'sharedCost'=>{
                  'exampleNumber'=>'811234567',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8[134]\\d{7}'
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'70[01]\\d{6}',
                      'exampleNumber'=>'700123456'
                    },
  'fixedLine'=>{
                 'exampleNumber'=>'212345678',
                 'nationalNumberPattern'=>'2\\d{8}|(?:3[1257-9]|4[16-9]|5[13-9])\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000035/en',
                                 'http://en.wikipedia.org/wiki/%2B420'
                               ]
                },
  'TerritoryName'=>'Czech Rep.',
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'[9-12]'
                                    },
                 'nationalNumberPattern'=>'9(?:3\\d{9}|6\\d{7,10})',
                 'exampleNumber'=>'93123456789'
               },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'9(?:0[05689]|76)\\d{6}',
                   'exampleNumber'=>'900123456'
                 },
  'internationalPrefix'=>'00'
}
;
}

1;
