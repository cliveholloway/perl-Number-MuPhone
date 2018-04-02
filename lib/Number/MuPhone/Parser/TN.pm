package Number::MuPhone::Parser::TN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Tunisia',
  'CountryCode'=>'TN',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000D5/en',
                                 'http://www.tunisietelecom.tn/tt/wcm/connect/?MOD=PDMProxy&TYPE=personalization&ID=NONE&KEY=NONE&LIBRARY=%2FcontentRoot%2Ficm%3Alibraries%5B16%5D&FOLDER=%2F&DOC_NAME=%2FcontentRoot%2Ficm%3Alibraries%5B16%5D%2FOTTI+2011.pdf',
                                 'http://www.tunisietelecom.tn/tt/internet/fr/pme/fixe/numeros_acceuil'
                               ]
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'8010\\d{4}',
                'exampleNumber'=>'80101234'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'88123456',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'88\\d{6}'
                 },
  'sharedCost'=>{
                  'exampleNumber'=>'81101234',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'8[12]10\\d{4}'
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57-9]\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'20123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:[259]\\d|4[0-6])\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'countryCode'=>'216',
  'fixedLine'=>{
                 'exampleNumber'=>'71234567',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'3(?:[012]\\d|6[0-4]|91)\\d{5}|7\\d{7}|81200\\d{3}'
               }
}
;
}

1;
