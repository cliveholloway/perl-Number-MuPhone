package Number::MuPhone::Parser::DJ;
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
                 'nationalNumberPattern'=>'2(?:1[2-5]|7[45])\\d{5}',
                 'exampleNumber'=>'21360003'
               },
  'CountryCode'=>'DJ',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Djibouti',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[27]\\d{7}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200003A/en'
                },
  'mobile'=>{
              'exampleNumber'=>'77831001',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'77\\d{6}'
            },
  'countryCode'=>'253',
  'internationalPrefix'=>'00'
}
;
}

1;
