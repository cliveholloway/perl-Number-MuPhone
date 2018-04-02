package Number::MuPhone::Parser::PL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'26|39|45|5[0137]|6[0469]|7[02389]|8[08]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[14]|2[0-57-9]|3[2-4]|5[24-689]|6[1-3578]|7[14-7]|8[1-79]|9[145]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{1})(\\d{4})',
                                                'leadingDigits'=>'[12]2',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'64',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2,3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'64',
                                                'pattern'=>'(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'512345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:45|5[0137]|6[069]|7[2389]|88)\\d{7}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[12]\\d{6,8}|[3-57-9]\\d{8}|6\\d{5,8}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'39\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'391234567'
          },
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'123456789',
                 'possibleLengths'=>{
                                      'national'=>'7,9'
                                    },
                 'nationalNumberPattern'=>'(?:1[2-8]|2[2-69]|3[2-4]|4[1-468]|5[24-689]|6[1-3578]|7[14-7]|8[1-79]|9[145])\\d{7}|[12]2\\d{5}'
               },
  'pager'=>{
             'exampleNumber'=>'641234567',
             'possibleLengths'=>{
                                  'national'=>'[6-9]'
                                },
             'nationalNumberPattern'=>'64\\d{4,7}'
           },
  'countryCode'=>'48',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B48',
                                 'http://www.itu.int/oth/T02020000A8/en',
                                 'http://www.uke.gov.pl/uke/index.jsp?place=Lead24&news_cat_id=277&news_id=3791&layout=9&page=text',
                                 'http://www.sgwp.wp.mil.pl/pl/1_1225.html'
                               ]
                },
  'CountryCode'=>'PL',
  'TerritoryName'=>'Poland',
  'sharedCost'=>{
                  'exampleNumber'=>'801234567',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'801\\d{6}'
                },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'701234567',
                   'nationalNumberPattern'=>'70\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 }
}
;
}

1;
