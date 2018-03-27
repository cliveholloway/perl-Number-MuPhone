package Number::MuPhone::Parser::BI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'22\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22201234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[267]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'BI',
  'TerritoryName'=>'Burundi',
  'internationalPrefix'=>'00',
  'countryCode'=>'257',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000022/en'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:29|6[189]|7[124-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'79561234'
            }
}
;
}

1;
