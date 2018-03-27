package Number::MuPhone::Parser::SL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'SL',
  'TerritoryName'=>'Sierra Leone',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7}'
                 },
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'mobile'=>{
              'nationalNumberPattern'=>'(?:2[15]|3[03-5]|4[04]|5[05]|66|7[6-9]|8[08]|99)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'25123456'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BB/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'232',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'[235]2[2-4][2-9]\\d{4}',
                 'exampleNumber'=>'22221234'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
