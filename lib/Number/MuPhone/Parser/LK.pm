package Number::MuPhone::Parser::LK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:[189]1|2[13-7]|3[1-8]|4[157]|5[12457]|6[35-7])[2-57]\\d{6}',
                 'exampleNumber'=>'112345678'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'94',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'nationalNumberPattern'=>'7[0125-8]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'712345678'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B94',
                                 'http://www.itu.int/oth/T02020000C3/en'
                               ]
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[1-689]',
                                                'pattern'=>'(\\d{2})(\\d{1})(\\d{6})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'7'
                                              }
                                            ]
                        },
  'CountryCode'=>'LK',
  'TerritoryName'=>'Sri Lanka'
}
;
}

1;
