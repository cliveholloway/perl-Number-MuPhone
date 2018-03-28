package Number::MuPhone::Parser::WS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'685',
  'internationalPrefix'=>'0',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B4/en'
                },
  'mobile'=>{
              'exampleNumber'=>'601234',
              'possibleLengths'=>{
                                   'national'=>'6,7'
                                 },
              'nationalNumberPattern'=>'(?:60|7[25-7]\\d)\\d{4}'
            },
  'tollFree'=>{
                'exampleNumber'=>'800123',
                'nationalNumberPattern'=>'800\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'6'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{4,6}'
                 },
  'TerritoryName'=>'Samoa',
  'CountryCode'=>'WS',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(8\\d{2})(\\d{3,4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'8'
                                              },
                                              {
                                                'leadingDigits'=>'7',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(7\\d)(\\d{5})'
                                              },
                                              {
                                                'format'=>'$1',
                                                'leadingDigits'=>'[2-6]',
                                                'pattern'=>'(\\d{5})'
                                              }
                                            ]
                        },
  'fixedLine'=>{
                 'exampleNumber'=>'22123',
                 'nationalNumberPattern'=>'(?:[2-5]\\d|6[1-9]|84\\d{2})\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5,7'
                                    }
               }
}
;
}

1;
