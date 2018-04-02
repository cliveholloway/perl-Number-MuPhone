package Number::MuPhone::Parser::ER;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'exampleNumber'=>'7123456',
              'nationalNumberPattern'=>'17[1-3]\\d{4}|7\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[178]\\d{6}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'291',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'8370362',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'1(?:1[12568]|20|40|55|6[146])\\d{4}|8\\d{6}'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000042/en'
                },
  'CountryCode'=>'ER',
  'TerritoryName'=>'Eritrea',
  'internationalPrefix'=>'00'
}
;
}

1;
