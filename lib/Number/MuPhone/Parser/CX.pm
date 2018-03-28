package Number::MuPhone::Parser::CX;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'6,8,10'
                                     },
                  'nationalNumberPattern'=>'13(?:00\\d{2})?\\d{4}',
                  'exampleNumber'=>'1300123456'
                },
  'mobile'=>{
              'exampleNumber'=>'412345678',
              'nationalNumberPattern'=>'14(?:5\\d|71)\\d{5}|4(?:[0-2]\\d|3[0-57-9]|4[47-9]|5[0-25-9]|6[6-9]|7[02-9]|8[147-9]|9[017-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/List_of_country_calling_codes',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Australia'
                               ]
                },
  'countryCode'=>'61',
  'internationalPrefix'=>'(?:14(?:1[14]|34|4[17]|[56]6|7[47]|88))?001[14-689]',
  'TerritoryName'=>'Christmas Islands',
  'CountryCode'=>'CX',
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'500\\d{6}',
                      'exampleNumber'=>'500123456'
                    },
  'premiumRate'=>{
                   'exampleNumber'=>'1900123456',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'190[0126]\\d{6}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'550\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'550123456'
          },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'891641234',
                 'nationalNumberPattern'=>'89164\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'8',
                                      'national'=>'9'
                                    }
               },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'preferredInternationalPrefix'=>'0011',
  'tollFree'=>{
                'nationalNumberPattern'=>'180(?:0\\d{3}|2)\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'7,10'
                                   },
                'exampleNumber'=>'1800123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1458]\\d{5,9}'
                 }
}
;
}

1;
