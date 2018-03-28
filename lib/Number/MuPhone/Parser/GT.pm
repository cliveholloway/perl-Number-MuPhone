package Number::MuPhone::Parser::GT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'[267][2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22456789'
               },
  'tollFree'=>{
                'exampleNumber'=>'18001112222',
                'nationalNumberPattern'=>'18[01]\\d{8}',
                'possibleLengths'=>{
                                     'national'=>'11'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-7]\\d{7}|1[89]\\d{9}'
                 },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'11'
                                      },
                   'nationalNumberPattern'=>'19\\d{9}',
                   'exampleNumber'=>'19001112222'
                 },
  'TerritoryName'=>'Guatemala',
  'CountryCode'=>'GT',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[2-7]'
                                              },
                                              {
                                                'leadingDigits'=>'1',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{4})(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'502',
  'mobile'=>{
              'exampleNumber'=>'51234567',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[345]\\d{7}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200005A/en',
                                 'http://www.sit.gob.gt/index.php?page=plan-de-numeracion',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Guatemala'
                               ]
                }
}
;
}

1;
