package Number::MuPhone::Parser::GP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Guadeloupe',
  'CountryCode'=>'GP',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000058/en',
                                 'http://www.arcep.fr/fileadmin/reprise/dossiers/numero/ZABPQ-ZNE.xls'
                               ]
                },
  'nationalPrefix'=>'0',
  'countryCode'=>'590',
  'fixedLine'=>{
                 'exampleNumber'=>'590201234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'590(?:0[13468]|1[012]|2[0-68]|3[28]|4[0-8]|5[579]|6[0189]|70|8[0-689]|9\\d)\\d{4}'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mainCountryForCode'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}',
              'exampleNumber'=>'690001234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2-$3',
                                                'leadingDigits'=>'',
                                                'pattern'=>'([56]90)(\\d{2})(\\d{4})'
                                              }
                                            ]
                        }
}
;
}

1;
