package Number::MuPhone::Parser::IT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Italy',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B39',
                                 'https://www.agcom.it/piano-di-numerazione'
                               ]
                },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'899123456',
                   'possibleLengths'=>{
                                        'national'=>'6,[8-10]'
                                      },
                   'nationalNumberPattern'=>'0878\\d{5}|1(?:44|6[346])\\d{6}|89(?:2\\d{3}|4(?:[0-4]\\d{2}|[5-9]\\d{4})|5(?:[0-4]\\d{2}|[5-9]\\d{6})|9\\d{6})'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'848123456',
                               'nationalNumberPattern'=>'848\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  }
                             },
  'fixedLine'=>{
                 'exampleNumber'=>'0212345678',
                 'possibleLengths'=>{
                                      'national'=>'[6-11]'
                                    },
                 'nationalNumberPattern'=>'0(?:[26]\\d{4,9}|(?:1(?:[0159]\\d|[27][1-5]|31|4[1-4]|6[1356]|8[2-57])|3(?:[0159]\\d|2[1-4]|3[12]|[48][1-6]|6[2-59]|7[1-7])|4(?:[0159]\\d|[23][1-9]|4[245]|6[1-5]|7[1-4]|81)|5(?:[0159]\\d|2[1-5]|3[2-6]|4[1-79]|6[4-6]|7[1-578]|8[3-8])|7(?:[0159]\\d|2[12]|3[1-7]|4[2346]|6[13569]|7[13-6]|8[1-59])|8(?:[0159]\\d|2[34578]|3[1-356]|[6-8][1-5])|9(?:[0159]\\d|[238][1-5]|4[12]|6[1-8]|7[1-6]))\\d{2,7})'
               },
  'CountryCode'=>'IT',
  'personalNumber'=>{
                      'nationalNumberPattern'=>'1(?:78\\d|99)\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'9,10'
                                         },
                      'exampleNumber'=>'1781234567'
                    },
  'tollFree'=>{
                'nationalNumberPattern'=>'80(?:0\\d{6}|3\\d{3})',
                'possibleLengths'=>{
                                     'national'=>'6,9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'6,9'
                                     },
                  'nationalNumberPattern'=>'84(?:[08]\\d{6}|[17]\\d{3})',
                  'exampleNumber'=>'848123456'
                },
  'voip'=>{
            'exampleNumber'=>'5512345678',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'55\\d{8}'
          },
  'mainCountryForCode'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[01589]\\d{5,10}|3(?:[12457-9]\\d{8}|[36]\\d{7,9})'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'[9-11]'
                                 },
              'nationalNumberPattern'=>'3(?:[12457-9]\\d{8}|6\\d{7,8}|3\\d{7,9})',
              'exampleNumber'=>'3123456789'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3,4})(\\d{4})',
                                                'leadingDigits'=>'0[26]|55',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(0[26])(\\d{4})(\\d{5})',
                                                'leadingDigits'=>'0[26]'
                                              },
                                              {
                                                'leadingDigits'=>'0[26]',
                                                'pattern'=>'(0[26])(\\d{4,6})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(0\\d{2})(\\d{3,4})(\\d{4})',
                                                'leadingDigits'=>'0[13-57-9][0159]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'0[13-57-9][0159]|8(?:03|4[17]|9(?:2|[45][0-4]))',
                                                'pattern'=>'(\\d{3})(\\d{3,6})'
                                              },
                                              {
                                                'leadingDigits'=>'0[13-57-9][2-46-8]',
                                                'pattern'=>'(0\\d{3})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(0\\d{3})(\\d{2,6})',
                                                'leadingDigits'=>'0[13-57-9][2-46-8]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[13]|8(?:00|4[08]|9(?:5[5-9]|9))'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'894[5-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'3'
                                              }
                                            ]
                        },
  'countryCode'=>'39',
  'mobileNumberPortableRegion'=>'true'
}
;
}

1;
