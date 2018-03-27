package Number::MuPhone::Parser::CD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'1234567',
                 'nationalNumberPattern'=>'1(?:2\\d{7}|\\d{6})|[2-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'7,9'
                                    }
               },
  'mobile'=>{
              'exampleNumber'=>'991234567',
              'possibleLengths'=>{
                                   'national'=>'7,9'
                                 },
              'nationalNumberPattern'=>'8(?:[0-2459]\\d{2}|8)\\d{5}|9[017-9]\\d{7}'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000037/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'243',
  'CountryCode'=>'CD',
  'TerritoryName'=>'Congo, Dem. Rep. of the (formerly Zaire)',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'12'
                                              },
                                              {
                                                'leadingDigits'=>'8[0-2459]|9',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'88',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[1-6]',
                                                'pattern'=>'(\\d{2})(\\d{5})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-6]\\d{6}|[18]\\d{6,8}|9\\d{8}'
                 }
}
;
}

1;
