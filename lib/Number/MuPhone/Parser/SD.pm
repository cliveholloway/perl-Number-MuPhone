package Number::MuPhone::Parser::SD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1(?:[125]\\d|8[3567])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'121231234'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'249',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9[0-3569]\\d{7}',
              'exampleNumber'=>'911231234'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000C4/en'
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[19]\\d{8}'
                 },
  'TerritoryName'=>'Sudan',
  'CountryCode'=>'SD',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        }
}
;
}

1;
