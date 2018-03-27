package Number::MuPhone::Parser::VA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'6,9'
                                   },
                'nationalNumberPattern'=>'80(?:0\\d{6}|3\\d{3})',
                'exampleNumber'=>'800123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:0(?:878\\d{5}|6698\\d{5})|[1589]\\d{5,10}|3(?:[12457-9]\\d{8}|[36]\\d{7,9}))'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'848123456',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  },
                               'nationalNumberPattern'=>'848\\d{6}'
                             },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'06698\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'0669812345'
               },
  'TerritoryName'=>'Vatican City',
  'CountryCode'=>'VA',
  'voip'=>{
            'exampleNumber'=>'5512345678',
            'nationalNumberPattern'=>'55\\d{8}',
            'possibleLengths'=>{
                                 'national'=>'10'
                               }
          },
  'premiumRate'=>{
                   'exampleNumber'=>'899123456',
                   'possibleLengths'=>{
                                        'national'=>'6,[8-10]'
                                      },
                   'nationalNumberPattern'=>'0878\\d{5}|1(?:44|6[346])\\d{6}|89(?:2\\d{3}|4(?:[0-4]\\d{2}|[5-9]\\d{4})|5(?:[0-4]\\d{2}|[5-9]\\d{6})|9\\d{6})'
                 },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'1(?:78\\d|99)\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'9,10'
                                         },
                      'exampleNumber'=>'1781234567'
                    },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'[9-11]'
                                 },
              'nationalNumberPattern'=>'3(?:[12457-9]\\d{8}|6\\d{7,8}|3\\d{7,9})',
              'exampleNumber'=>'3123456789'
            },
  'references'=>{
                  'sourceUrl'=>'http://en.wikipedia.org/wiki/Telephone_numbers_in_Vatican_City'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'39',
  'mobileNumberPortableRegion'=>'true',
  'sharedCost'=>{
                  'exampleNumber'=>'848123456',
                  'nationalNumberPattern'=>'84(?:[08]\\d{6}|[17]\\d{3})',
                  'possibleLengths'=>{
                                       'national'=>'6,9'
                                     }
                }
}
;
}

1;
