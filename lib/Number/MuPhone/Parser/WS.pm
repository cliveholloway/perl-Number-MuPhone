package Number::MuPhone::Parser::WS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'685',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'5,7'
                                    },
                 'nationalNumberPattern'=>'(?:[2-5]\\d|6[1-9]|84\\d{2})\\d{3}',
                 'exampleNumber'=>'22123'
               },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:60|7[25-7]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6,7'
                                 },
              'exampleNumber'=>'601234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(8\\d{2})(\\d{3,4})',
                                                'leadingDigits'=>'8',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'7',
                                                'pattern'=>'(7\\d)(\\d{5})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[2-6]',
                                                'pattern'=>'(\\d{5})',
                                                'format'=>'$1'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{4,6}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'6'
                                   },
                'nationalNumberPattern'=>'800\\d{3}',
                'exampleNumber'=>'800123'
              },
  'internationalPrefix'=>'0',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B4/en'
                },
  'CountryCode'=>'WS',
  'TerritoryName'=>'Samoa'
}
;
}

1;
