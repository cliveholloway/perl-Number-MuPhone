package Number::MuPhone::Parser::SR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Suriname',
  'CountryCode'=>'SR',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000C5/en'
                },
  'countryCode'=>'597',
  'fixedLine'=>{
                 'exampleNumber'=>'211234',
                 'nationalNumberPattern'=>'(?:2[1-3]|3[0-7]|4\\d|5[2-58]|68\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6,7'
                                    }
               },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'6'
                               },
            'nationalNumberPattern'=>'56\\d{4}',
            'exampleNumber'=>'561234'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{5,6}'
                 },
  'mobile'=>{
              'exampleNumber'=>'7412345',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'(?:7[124-7]|8[1-9])\\d{5}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[2-4]|5[2-58]',
                                                'format'=>'$1-$2'
                                              },
                                              {
                                                'leadingDigits'=>'56',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1-$2-$3'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[6-8]',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        }
}
;
}

1;
