package Number::MuPhone::Parser::GF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'French Guiana (French Dept. of)',
  'CountryCode'=>'GF',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200004C/en',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0594&CMD=RESULTS_NUMEROTATION',
                                 'http://www.arcep.fr/uploads/tx_gsavis/11-1297.pdf'
                               ]
                },
  'fixedLine'=>{
                 'exampleNumber'=>'594101234',
                 'nationalNumberPattern'=>'594(?:10|2[012457-9]|3[0-57-9]|4[3-9]|5[7-9]|6[0-3]|9[014])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'countryCode'=>'594',
  'nationalPrefix'=>'0',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'694(?:[0249]\\d|1[2-9]|3[0-48])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'694201234'
            }
}
;
}

1;
