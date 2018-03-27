package Number::MuPhone::Parser::CK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'21234',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'nationalNumberPattern'=>'(?:2\\d|3[13-7]|4[1-5])\\d{3}'
               },
  'mobile'=>{
              'nationalNumberPattern'=>'[5-8]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'exampleNumber'=>'71234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002F/en'
                },
  'countryCode'=>'682',
  'internationalPrefix'=>'00',
  'CountryCode'=>'CK',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{3})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Cook Islands',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{4}'
                 }
}
;
}

1;
