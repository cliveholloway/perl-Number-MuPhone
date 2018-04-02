package Number::MuPhone::Parser::MG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'202123456',
                 'nationalNumberPattern'=>'20(?:2\\d{2}|4[47]\\d|5[3467]\\d|6[279]\\d|7(?:2[29]|[35]\\d)|8[268]\\d|9[245]\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'9'
                                    }
               },
  'countryCode'=>'261',
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([23]\\d)(\\d{2})(\\d{3})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'3[2-49]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'321234567'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23]\\d{8}'
                 },
  'voip'=>{
            'exampleNumber'=>'221234567',
            'nationalNumberPattern'=>'22\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200007F/en'
                },
  'CountryCode'=>'MG',
  'TerritoryName'=>'Madagascar'
}
;
}

1;
