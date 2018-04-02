package Number::MuPhone::Parser::YE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Yemen',
  'CountryCode'=>'YE',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E7/en'
                },
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{6,8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([1-7])(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[1-6]|7[24-68]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'7[0137]',
                                                'pattern'=>'(7\\d{2})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'712345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7[0137]\\d{7}'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'1234567',
                 'possibleLengths'=>{
                                      'national'=>'7,8',
                                      'localOnly'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:1(?:7\\d|[2-68])|2[2-68]|3[2358]|4[2-58]|5[2-6]|6[3-58]|7[24-68])\\d{5}'
               },
  'countryCode'=>'967',
  'nationalPrefix'=>'0',
  'nationalPrefixFormattingRule'=>'$NP$FG'
}
;
}

1;
