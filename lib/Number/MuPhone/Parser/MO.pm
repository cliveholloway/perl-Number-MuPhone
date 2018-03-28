package Number::MuPhone::Parser::MO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:28[2-57-9]|8[2-57-9]\\d)\\d{5}',
                 'exampleNumber'=>'28212345'
               },
  'CountryCode'=>'MO',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([268]\\d{3})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'TerritoryName'=>'Macao, China',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[268]\\d{7}'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200007E/en',
                                 'http://www.dsrt.gov.mo/web/en/generalinfo/allocatednum'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'66123456',
              'nationalNumberPattern'=>'6(?:[2356]\\d|8[158])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'853'
}
;
}

1;
