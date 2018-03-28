package Number::MuPhone::Parser::GP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'590(?:0[13468]|1[012]|2[0-68]|3[28]|4[0-8]|5[579]|6[0189]|70|8[0-689]|9\\d)\\d{4}',
                 'exampleNumber'=>'590201234'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'590',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000058/en',
                                 'http://www.arcep.fr/fileadmin/reprise/dossiers/numero/ZABPQ-ZNE.xls'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'690001234',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'mainCountryForCode'=>'true',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([56]90)(\\d{2})(\\d{4})',
                                                'format'=>'$1 $2-$3',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'GP',
  'TerritoryName'=>'Guadeloupe'
}
;
}

1;
