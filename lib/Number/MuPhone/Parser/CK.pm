package Number::MuPhone::Parser::CK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Cook Islands',
  'CountryCode'=>'CK',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200002F/en'
                },
  'countryCode'=>'682',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2\\d|3[13-7]|4[1-5])\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'exampleNumber'=>'21234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{4}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'[5-8]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'5'
                                 },
              'exampleNumber'=>'71234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{3})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        }
}
;
}

1;
