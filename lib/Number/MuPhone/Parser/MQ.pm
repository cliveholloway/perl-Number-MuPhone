package Number::MuPhone::Parser::MQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'596(?:0[2-5]|[12]0|3[05-9]|4[024-8]|[5-7]\\d|89|9[4-8])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'596301234'
               },
  'countryCode'=>'596',
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'696201234',
              'nationalNumberPattern'=>'696(?:[0-47-9]\\d|5[0-6]|6[0-4])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000086/en',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION'
                               ]
                },
  'CountryCode'=>'MQ',
  'TerritoryName'=>'Martinique (French Dept. of)'
}
;
}

1;
