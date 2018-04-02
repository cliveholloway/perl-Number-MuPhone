package Number::MuPhone::Parser::IM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'44',
  'pager'=>{
             'exampleNumber'=>'7624012345',
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'nationalNumberPattern'=>'7624[01689]\\d{5}'
           },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'uan'=>{
           'exampleNumber'=>'5512345678',
           'possibleLengths'=>{
                                'national'=>'10'
                              },
           'nationalNumberPattern'=>'3(?:08162\\d|3\\d{5}|4(?:40[49]06|5624\\d)|7(?:0624\\d|2299\\d))\\d{3}|55\\d{8}'
         },
  'voip'=>{
            'exampleNumber'=>'5612345678',
            'nationalNumberPattern'=>'56\\d{8}',
            'possibleLengths'=>{
                                 'national'=>'10'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[135789]\\d{6,9}'
                 },
  'preferredExtnPrefix'=>' x',
  'mobile'=>{
              'exampleNumber'=>'7924123456',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'7(?:4576|[59]24\\d|624[2-4])\\d{5}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'personalNumber'=>{
                      'exampleNumber'=>'7012345678',
                      'nationalNumberPattern'=>'70\\d{8}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'tollFree'=>{
                'nationalNumberPattern'=>'808162\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8081624567'
              },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'8(?:4(?:40[49]06|5624\\d)|70624\\d)\\d{3}',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'exampleNumber'=>'8456247890'
                },
  'CountryCode'=>'IM',
  'nationalPrefix'=>'0',
  'areaCodeOptional'=>{
                        'nationalNumberPattern'=>'1624[2-9]\\d{5}',
                        'possibleLengths'=>{
                                             'national'=>'10'
                                           },
                        'exampleNumber'=>'1624250123'
                      },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1624[5-8]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'6'
                                    },
                 'exampleNumber'=>'1624756789'
               },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'(?:872299|90[0167]624)\\d{4}',
                   'exampleNumber'=>'9016247890'
                 },
  'TerritoryName'=>'Isle of Man',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://static.ofcom.org.uk/static/numbering/',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom'
                               ]
                }
}
;
}

1;
