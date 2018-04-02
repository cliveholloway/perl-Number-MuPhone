package Number::MuPhone::Parser::CV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000026/en'
                },
  'CountryCode'=>'CV',
  'TerritoryName'=>'Cape Verde',
  'internationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:9\\d|59)\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'9911234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[259]\\d{6}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'2211234',
                 'nationalNumberPattern'=>'2(?:2[1-7]|3[0-8]|4[12]|5[1256]|6\\d|7[1-3]|8[1-5])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'countryCode'=>'238'
}
;
}

1;
