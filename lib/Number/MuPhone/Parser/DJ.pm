package Number::MuPhone::Parser::DJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Djibouti',
  'CountryCode'=>'DJ',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200003A/en'
                },
  'countryCode'=>'253',
  'fixedLine'=>{
                 'exampleNumber'=>'21360003',
                 'nationalNumberPattern'=>'2(?:1[2-5]|7[45])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[27]\\d{7}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'77\\d{6}',
              'exampleNumber'=>'77831001'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        }
}
;
}

1;
