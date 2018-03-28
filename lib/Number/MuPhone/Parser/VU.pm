package Number::MuPhone::Parser::VU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'countryCode'=>'678',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E2/en'
                },
  'mobile'=>{
              'exampleNumber'=>'5912345',
              'nationalNumberPattern'=>'(?:5(?:7[2-5]|[0-689]\\d)|7[013-7]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57-9]\\d{4,6}'
                 },
  'TerritoryName'=>'Vanuatu',
  'CountryCode'=>'VU',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[579]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'uan'=>{
           'exampleNumber'=>'30123',
           'possibleLengths'=>{
                                'national'=>'5,7'
                              },
           'nationalNumberPattern'=>'3[03]\\d{3}|900\\d{4}'
         },
  'fixedLine'=>{
                 'exampleNumber'=>'22123',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'nationalNumberPattern'=>'(?:2[02-9]\\d|3(?:[5-7]\\d|8[0-8])|48[4-9]|88\\d)\\d{2}'
               }
}
;
}

1;
