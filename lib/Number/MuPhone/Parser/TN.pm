package Number::MuPhone::Parser::TN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'premiumRate'=>{
                   'exampleNumber'=>'88123456',
                   'nationalNumberPattern'=>'88\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'tollFree'=>{
                'exampleNumber'=>'80101234',
                'nationalNumberPattern'=>'8010\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57-9]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'CountryCode'=>'TN',
  'TerritoryName'=>'Tunisia',
  'countryCode'=>'216',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000D5/en',
                                 'http://www.tunisietelecom.tn/tt/wcm/connect/?MOD=PDMProxy&TYPE=personalization&ID=NONE&KEY=NONE&LIBRARY=%2FcontentRoot%2Ficm%3Alibraries%5B16%5D&FOLDER=%2F&DOC_NAME=%2FcontentRoot%2Ficm%3Alibraries%5B16%5D%2FOTTI+2011.pdf',
                                 'http://www.tunisietelecom.tn/tt/internet/fr/pme/fixe/numeros_acceuil'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:[259]\\d|4[0-6])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'20123456'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'71234567',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'3(?:[012]\\d|6[0-4]|91)\\d{5}|7\\d{7}|81200\\d{3}'
               },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'8[12]10\\d{4}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'81101234'
                }
}
;
}

1;
