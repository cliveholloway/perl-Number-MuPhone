package Number::MuPhone::Parser::MQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'MQ',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Martinique (French Dept. of)',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[56]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000086/en',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'696201234',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'696(?:[0-47-9]\\d|5[0-6]|6[0-4])\\d{4}'
            },
  'countryCode'=>'596',
  'internationalPrefix'=>'00',
  'fixedLine'=>{
                 'exampleNumber'=>'596301234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'596(?:0[2-5]|[12]0|3[05-9]|4[024-8]|[5-7]\\d|89|9[4-8])\\d{4}'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
