package Number::MuPhone::Parser::JE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'nationalNumberPattern'=>'76(?:0[012]|2[356]|4[0134]|5[49]|6[0-369]|77|81|9[39])\\d{6}',
             'exampleNumber'=>'7640123456'
           },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[135789]\\d{6,9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8007354567',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'80(?:07(?:35|81)|8901)\\d{4}'
              },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'6'
                                    },
                 'nationalNumberPattern'=>'1534[0-24-8]\\d{5}',
                 'exampleNumber'=>'1534456789'
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://static.ofcom.org.uk/static/numbering/',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom',
                                 'http://www.jcra.je/cms3/v2/public/cmsChild.asp?pageID=1024&childID=1036'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'7(?:509\\d|7(?:00[378]|97[7-9])|829\\d|937\\d)\\d{5}',
              'exampleNumber'=>'7797712345'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'44',
  'CountryCode'=>'JE',
  'TerritoryName'=>'Jersey',
  'voip'=>{
            'exampleNumber'=>'5612345678',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'56\\d{8}'
          },
  'premiumRate'=>{
                   'exampleNumber'=>'9018105678',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'(?:871206|90(?:066[59]|1810|71(?:07|55)))\\d{4}'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'7015115678',
                      'nationalNumberPattern'=>'701511\\d{4}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'uan'=>{
           'exampleNumber'=>'5512345678',
           'possibleLengths'=>{
                                'national'=>'10'
                              },
           'nationalNumberPattern'=>'3(?:0(?:07(?:35|81)|8901)|3\\d{4}|4(?:4(?:4(?:05|42|69)|703)|5(?:041|800))|7(?:0002|1206))\\d{4}|55\\d{8}'
         },
  'sharedCost'=>{
                  'exampleNumber'=>'8447034567',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'nationalNumberPattern'=>'8(?:4(?:4(?:4(?:05|42|69)|703)|5(?:041|800))|70002)\\d{4}'
                },
  'preferredExtnPrefix'=>' x',
  'areaCodeOptional'=>{
                        'exampleNumber'=>'1534250123',
                        'possibleLengths'=>{
                                             'national'=>'10'
                                           },
                        'nationalNumberPattern'=>'1534[2-9]\\d{5}'
                      }
}
;
}

1;
