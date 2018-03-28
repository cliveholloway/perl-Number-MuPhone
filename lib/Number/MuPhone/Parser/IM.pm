package Number::MuPhone::Parser::IM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'1624756789',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'1624[5-8]\\d{5}'
               },
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[135789]\\d{6,9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8081624567',
                'nationalNumberPattern'=>'808162\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'nationalNumberPattern'=>'7624[01689]\\d{5}',
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'exampleNumber'=>'7624012345'
           },
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'nationalNumberPattern'=>'8(?:4(?:40[49]06|5624\\d)|70624\\d)\\d{3}',
                  'exampleNumber'=>'8456247890'
                },
  'preferredExtnPrefix'=>' x',
  'areaCodeOptional'=>{
                        'exampleNumber'=>'1624250123',
                        'possibleLengths'=>{
                                             'national'=>'10'
                                           },
                        'nationalNumberPattern'=>'1624[2-9]\\d{5}'
                      },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'10'
                              },
           'nationalNumberPattern'=>'3(?:08162\\d|3\\d{5}|4(?:40[49]06|5624\\d)|7(?:0624\\d|2299\\d))\\d{3}|55\\d{8}',
           'exampleNumber'=>'5512345678'
         },
  'CountryCode'=>'IM',
  'TerritoryName'=>'Isle of Man',
  'voip'=>{
            'exampleNumber'=>'5612345678',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'56\\d{8}'
          },
  'premiumRate'=>{
                   'exampleNumber'=>'9016247890',
                   'nationalNumberPattern'=>'(?:872299|90[0167]624)\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      }
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'7012345678',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'70\\d{8}'
                    },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://static.ofcom.org.uk/static/numbering/',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'7924123456',
              'nationalNumberPattern'=>'7(?:4576|[59]24\\d|624[2-4])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 }
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'44'
}
;
}

1;
