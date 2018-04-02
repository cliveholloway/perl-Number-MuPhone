package Number::MuPhone::Parser::ST;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B6/en'
                },
  'CountryCode'=>'ST',
  'TerritoryName'=>'Sao Tome and Principe',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'22\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2221234'
               },
  'countryCode'=>'239',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'9812345',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'9(?:0(?:0[5-9]|[1-9]\\d)|[89]\\d{2})\\d{3}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[29]\\d{6}'
                 }
}
;
}

1;
