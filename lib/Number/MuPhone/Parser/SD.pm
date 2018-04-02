package Number::MuPhone::Parser::SD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'249',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'121231234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'1(?:[125]\\d|8[3567])\\d{6}'
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9[0-3569]\\d{7}',
              'exampleNumber'=>'911231234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[19]\\d{8}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000C4/en'
                },
  'CountryCode'=>'SD',
  'TerritoryName'=>'Sudan'
}
;
}

1;
