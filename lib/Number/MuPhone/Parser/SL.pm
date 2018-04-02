package Number::MuPhone::Parser::SL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'nationalPrefix'=>'0',
  'countryCode'=>'232',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'[235]2[2-4][2-9]\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22221234'
               },
  'mobile'=>{
              'exampleNumber'=>'25123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:2[15]|3[03-5]|4[04]|5[05]|66|7[6-9]|8[08]|99)\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BB/en'
                },
  'CountryCode'=>'SL',
  'TerritoryName'=>'Sierra Leone'
}
;
}

1;
