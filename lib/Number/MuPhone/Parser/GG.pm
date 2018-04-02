package Number::MuPhone::Parser::GG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'7,10'
                                     },
                  'nationalNumberPattern'=>'8(?:4(?:5464\\d|[2-5]\\d{7})|70\\d{7})',
                  'exampleNumber'=>'8431234567'
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7,9,10'
                                   },
                'nationalNumberPattern'=>'80(?:0(?:1111|\\d{6,7})|8\\d{7})|500\\d{6}',
                'exampleNumber'=>'8001234567'
              },
  'personalNumber'=>{
                      'exampleNumber'=>'7012345678',
                      'nationalNumberPattern'=>'70\\d{8}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'CountryCode'=>'GG',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'nationalNumberPattern'=>'76(?:0[012]|2[356]|4[0134]|5[49]|6[0-369]|77|81|9[39])\\d{6}',
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'exampleNumber'=>'7640123456'
           },
  'countryCode'=>'44',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'exampleNumber'=>'7781123456',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'7(?:781\\d|839\\d|911[17])\\d{5}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[135789]\\d{6,9}'
                 },
  'preferredExtnPrefix'=>' x',
  'uan'=>{
           'nationalNumberPattern'=>'(?:3[0347]|55)\\d{8}',
           'possibleLengths'=>{
                                'national'=>'10'
                              },
           'exampleNumber'=>'5512345678'
         },
  'voip'=>{
            'exampleNumber'=>'5612345678',
            'nationalNumberPattern'=>'56\\d{8}',
            'possibleLengths'=>{
                                 'national'=>'10'
                               }
          },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'(?:87[123]|9(?:[01]\\d|8[0-3]))\\d{7}',
                   'exampleNumber'=>'9012345678'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://static.ofcom.org.uk/static/numbering/',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom'
                               ]
                },
  'TerritoryName'=>'Guernsey',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1481[25-9]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'6'
                                    },
                 'exampleNumber'=>'1481256789'
               },
  'areaCodeOptional'=>{
                        'nationalNumberPattern'=>'1481[2-9]\\d{5}',
                        'possibleLengths'=>{
                                             'national'=>'10'
                                           },
                        'exampleNumber'=>'1481250123'
                      },
  'nationalPrefix'=>'0'
}
;
}

1;
