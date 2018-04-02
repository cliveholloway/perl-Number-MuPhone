package Number::MuPhone::Parser::MF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Saint-Martin, French Antilles',
  'CountryCode'=>'MF',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000058/en',
                                 'http://www.arcep.fr/fileadmin/reprise/dossiers/numero/ZABPQ-ZNE.xls'
                               ]
                },
  'countryCode'=>'590',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'590(?:[02][79]|13|5[0-268]|[78]7)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'590271234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'690001234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        }
}
;
}

1;
