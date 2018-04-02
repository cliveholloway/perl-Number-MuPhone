package Number::MuPhone::Parser::GR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2123456789',
                 'possibleLengths'=>{
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'2(?:1\\d{2}|2(?:2[1-46-9]|3[1-8]|4[1-7]|5[1-4]|6[1-8]|7[1-5]|[89][1-9])|3(?:1\\d|2[1-57]|[35][1-3]|4[13]|7[1-7]|8[124-6]|9[1-79])|4(?:1\\d|2[1-8]|3[1-4]|4[13-5]|6[1-578]|9[1-5])|5(?:1\\d|[29][1-4]|3[1-5]|4[124]|5[1-6])|6(?:1\\d|3[1245]|4[1-7]|5[13-9]|[269][1-6]|7[14]|8[1-5])|7(?:1\\d|2[1-5]|3[1-6]|4[1-7]|5[1-57]|6[135]|9[125-7])|8(?:1\\d|2[1-5]|[34][1-4]|9[1-57]))\\d{6}'
               },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'30',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([27]\\d)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'21|7',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2[2-9]1|[689]',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2[2-9][02-9]',
                                                'pattern'=>'(2\\d{3})(\\d{6})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'69\\d{8}',
              'exampleNumber'=>'6912345678'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[26-9]\\d{9}'
                 },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'8(?:0[16]|12|25)\\d{7}',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'exampleNumber'=>'8011234567'
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}',
                'exampleNumber'=>'8001234567'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'9091234567',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'90[19]\\d{7}'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'7012345678',
                      'nationalNumberPattern'=>'70\\d{8}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000055/en',
                                 'http://en.wikipedia.org/wiki/%2B30'
                               ]
                },
  'CountryCode'=>'GR',
  'TerritoryName'=>'Greece'
}
;
}

1;
