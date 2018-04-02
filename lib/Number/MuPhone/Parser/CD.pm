package Number::MuPhone::Parser::CD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Congo, Dem. Rep. of the (formerly Zaire)',
  'CountryCode'=>'CD',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000037/en'
                },
  'countryCode'=>'243',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'1234567',
                 'possibleLengths'=>{
                                      'national'=>'7,9'
                                    },
                 'nationalNumberPattern'=>'1(?:2\\d{7}|\\d{6})|[2-6]\\d{6}'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-6]\\d{6}|[18]\\d{6,8}|9\\d{8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'8(?:[0-2459]\\d{2}|8)\\d{5}|9[017-9]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'7,9'
                                 },
              'exampleNumber'=>'991234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'12'
                                              },
                                              {
                                                'leadingDigits'=>'8[0-2459]|9',
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'88',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{5})',
                                                'leadingDigits'=>'[1-6]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        }
}
;
}

1;
