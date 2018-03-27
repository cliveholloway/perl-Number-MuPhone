package Number::MuPhone::Parser::ER;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'countryCode'=>'291',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000042/en'
                },
  'mobile'=>{
              'exampleNumber'=>'7123456',
              'nationalNumberPattern'=>'17[1-3]\\d{4}|7\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[178]\\d{6}'
                 },
  'TerritoryName'=>'Eritrea',
  'CountryCode'=>'ER',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1(?:1[12568]|20|40|55|6[146])\\d{4}|8\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'7',
                                      'localOnly'=>'6'
                                    },
                 'exampleNumber'=>'8370362'
               }
}
;
}

1;
