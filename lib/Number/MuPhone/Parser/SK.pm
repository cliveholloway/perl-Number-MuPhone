package Number::MuPhone::Parser::SK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'exampleNumber'=>'961234567',
           'nationalNumberPattern'=>'96\\d{7}',
           'possibleLengths'=>{
                                'national'=>'9'
                              }
         },
  'voip'=>{
            'exampleNumber'=>'690123456',
            'nationalNumberPattern'=>'6(?:02|5[0-4]|9[0-6])\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[2-68]\\d{5,8}|9\\d{6,8})'
                 },
  'mobile'=>{
              'exampleNumber'=>'912123456',
              'nationalNumberPattern'=>'9(?:0(?:[1-8]\\d|9[1-9])|(?:1[0-24-9]|[45]\\d)\\d)\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'21[67]',
                                                'pattern'=>'(2)(1[67])(\\d{3,4})'
                                              },
                                              {
                                                'pattern'=>'([3-5]\\d)(1[67])(\\d{2,3})',
                                                'leadingDigits'=>'[3-5]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1/$2 $3 $4',
                                                'leadingDigits'=>'2',
                                                'pattern'=>'(2)(\\d{3})(\\d{3})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1/$2 $3 $4',
                                                'pattern'=>'([3-5]\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[3-5]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[689]',
                                                'pattern'=>'([689]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(9090)(\\d{3})',
                                                'leadingDigits'=>'9090',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'countryCode'=>'421',
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'exampleNumber'=>'9090123',
             'possibleLengths'=>{
                                  'national'=>'7'
                                },
             'nationalNumberPattern'=>'9090\\d{3}'
           },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'CountryCode'=>'SK',
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'8[5-9]\\d{7}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'exampleNumber'=>'850123456'
                },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'6,7,9'
                                    },
                 'nationalNumberPattern'=>'2(?:1(?:6\\d{3,4}|7\\d{3})|[2-9]\\d{7})|[3-5][1-8](?:1(?:6\\d{2,3}|7\\d{3})|\\d{7})',
                 'exampleNumber'=>'221234567'
               },
  'TerritoryName'=>'Slovakia',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000BD/en',
                                 'http://www.teleoff.gov.sk/data/files/25211.pdf'
                               ]
                },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'9(?:[78]\\d{7}|00\\d{6})',
                   'exampleNumber'=>'900123456'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'800123456',
                               'nationalNumberPattern'=>'(?:602|8(?:00|[5-9]\\d)|9(?:00|[78]\\d))\\d{6}|9090\\d{3}',
                               'possibleLengths'=>{
                                                    'national'=>'7,9'
                                                  }
                             }
}
;
}

1;
