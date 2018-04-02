package Number::MuPhone::Parser::VU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[579]',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:5(?:7[2-5]|[0-689]\\d)|7[013-7]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'5912345'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57-9]\\d{4,6}'
                 },
  'uan'=>{
           'nationalNumberPattern'=>'3[03]\\d{3}|900\\d{4}',
           'possibleLengths'=>{
                                'national'=>'5,7'
                              },
           'exampleNumber'=>'30123'
         },
  'fixedLine'=>{
                 'exampleNumber'=>'22123',
                 'nationalNumberPattern'=>'(?:2[02-9]\\d|3(?:[5-7]\\d|8[0-8])|48[4-9]|88\\d)\\d{2}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    }
               },
  'countryCode'=>'678',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E2/en'
                },
  'CountryCode'=>'VU',
  'TerritoryName'=>'Vanuatu',
  'internationalPrefix'=>'00'
}
;
}

1;
