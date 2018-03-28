package Number::MuPhone::Parser::YE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:1(?:7\\d|[2-68])|2[2-68]|3[2358]|4[2-58]|5[2-6]|6[3-58]|7[24-68])\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'7,8'
                                    },
                 'exampleNumber'=>'1234567'
               },
  'nationalPrefix'=>'0',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{6,8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([1-7])(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[1-6]|7[24-68]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(7\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'7[0137]',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'CountryCode'=>'YE',
  'TerritoryName'=>'Yemen',
  'countryCode'=>'967',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E7/en'
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'exampleNumber'=>'712345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7[0137]\\d{7}'
            }
}
;
}

1;
