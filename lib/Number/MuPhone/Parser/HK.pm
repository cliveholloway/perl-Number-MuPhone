package Number::MuPhone::Parser::HK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:[13-8]\\d|2[013-9]|9[0-24-9])|3(?:[1569][0-24-9]|4[0-246-9]|7[0-24-69]|89)|58[01])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21234567'
               },
  'preferredInternationalPrefix'=>'00',
  'CountryCode'=>'HK',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[235-7]|[89](?:0[1-9]|[1-9])',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'800',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(800)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(900)(\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'900'
                                              },
                                              {
                                                'pattern'=>'(900)(\\d{2,5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'900'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Hong Kong',
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235-7]\\d{7}|8\\d{7,8}|9\\d{4,10}'
                 },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'8(?:1[1-4679]|2[0-367]|3[02-47])\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'exampleNumber'=>'81123456'
                    },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'[5-8],11'
                                      },
                   'nationalNumberPattern'=>'900(?:[0-24-9]\\d{7}|3\\d{1,4})',
                   'exampleNumber'=>'90012345678'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.ofca.gov.hk/en/industry_focus/telecommunications/portability/index.html'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:5(?:[1-59][0-46-9]|6[0-4689]|7[0-2469])|6(?:0[1-9]|[1459]\\d|[2368][0-57-9]|7[0-79])|9(?:0[1-9]|1[02-9]|[2358][0-8]|[467]\\d))\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'51234567'
            },
  'internationalPrefix'=>'00(?:[126-9]|30|5[09])?',
  'pager'=>{
             'nationalNumberPattern'=>'7(?:1[0-369]|[23][0-37-9]|47|5[1578]|6[0235]|7[278]|8[236-9]|9[025-9])\\d{5}',
             'possibleLengths'=>{
                                  'national'=>'8'
                                },
             'exampleNumber'=>'71234567'
           },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'852'
}
;
}

1;
