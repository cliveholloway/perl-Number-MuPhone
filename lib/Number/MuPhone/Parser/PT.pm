package Number::MuPhone::Parser::PT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:[12]\\d|[35][1-689]|4[1-59]|6[1-35689]|7[1-9]|8[1-69]|9[1256])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'212345678'
               },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[02]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-46-9]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2[12]',
                                                'pattern'=>'(2\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'([2-46-9]\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2[3-9]|[346-9]'
                                              }
                                            ]
                        },
  'sharedCost'=>{
                  'exampleNumber'=>'808123456',
                  'nationalNumberPattern'=>'80(?:8\\d|9[1579])\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     }
                },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'7(?:0(?:7\\d|8[17]))\\d{5}',
           'exampleNumber'=>'707123456'
         },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'30\\d{7}',
            'exampleNumber'=>'301234567'
          },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'6(?:0[178]|4[68])\\d{6}|76(?:0[1-57]|1[2-47]|2[237])\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'760123456'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'884123456',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'884[0-4689]\\d{5}'
                    },
  'TerritoryName'=>'Portugal',
  'CountryCode'=>'PT',
  'voicemail'=>{
                 'exampleNumber'=>'600110000',
                 'nationalNumberPattern'=>'600\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'351',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'exampleNumber'=>'912345678',
              'nationalNumberPattern'=>'9(?:[1236]\\d{2}|480)\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.anacom.pt/render.jsp?categoryId=279098'
                }
}
;
}

1;
