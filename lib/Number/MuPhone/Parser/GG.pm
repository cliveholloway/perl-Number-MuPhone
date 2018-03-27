package Number::MuPhone::Parser::GG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'1481256789',
                 'nationalNumberPattern'=>'1481[25-9]\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'10'
                                    }
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'exampleNumber'=>'7640123456',
             'nationalNumberPattern'=>'76(?:0[012]|2[356]|4[0134]|5[49]|6[0-369]|77|81|9[39])\\d{6}',
             'possibleLengths'=>{
                                  'national'=>'10'
                                }
           },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[135789]\\d{6,9}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'80(?:0(?:1111|\\d{6,7})|8\\d{7})|500\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'7,9,10'
                                   },
                'exampleNumber'=>'8001234567'
              },
  'uan'=>{
           'exampleNumber'=>'5512345678',
           'nationalNumberPattern'=>'(?:3[0347]|55)\\d{8}',
           'possibleLengths'=>{
                                'national'=>'10'
                              }
         },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'8(?:4(?:5464\\d|[2-5]\\d{7})|70\\d{7})',
                  'possibleLengths'=>{
                                       'national'=>'7,10'
                                     },
                  'exampleNumber'=>'8431234567'
                },
  'preferredExtnPrefix'=>' x',
  'areaCodeOptional'=>{
                        'exampleNumber'=>'1481250123',
                        'nationalNumberPattern'=>'1481[2-9]\\d{5}',
                        'possibleLengths'=>{
                                             'national'=>'10'
                                           }
                      },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'7(?:781\\d|839\\d|911[17])\\d{5}',
              'exampleNumber'=>'7781123456'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://static.ofcom.org.uk/static/numbering/',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom'
                               ]
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'44',
  'CountryCode'=>'GG',
  'TerritoryName'=>'Guernsey',
  'voip'=>{
            'exampleNumber'=>'5612345678',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'56\\d{8}'
          },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'70\\d{8}',
                      'exampleNumber'=>'7012345678'
                    },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:87[123]|9(?:[01]\\d|8[0-3]))\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9012345678'
                 }
}
;
}

1;
