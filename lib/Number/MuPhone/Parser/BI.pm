package Number::MuPhone::Parser::BI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000022/en'
                },
  'CountryCode'=>'BI',
  'TerritoryName'=>'Burundi',
  'fixedLine'=>{
                 'exampleNumber'=>'22201234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'22\\d{6}'
               },
  'countryCode'=>'257',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'79561234',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:29|6[189]|7[124-9])\\d{6}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[267]\\d{7}'
                 }
}
;
}

1;
