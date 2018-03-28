package Number::MuPhone::Parser::ST;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2221234',
                 'nationalNumberPattern'=>'22\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'CountryCode'=>'ST',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'TerritoryName'=>'Sao Tome and Principe',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[29]\\d{6}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'9(?:0(?:0[5-9]|[1-9]\\d)|[89]\\d{2})\\d{3}',
              'exampleNumber'=>'9812345'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B6/en'
                },
  'countryCode'=>'239',
  'internationalPrefix'=>'00'
}
;
}

1;
