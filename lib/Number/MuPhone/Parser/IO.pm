package Number::MuPhone::Parser::IO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'3\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'38\\d{5}',
              'exampleNumber'=>'3801234'
            },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'37\\d{5}',
                 'exampleNumber'=>'3709100'
               },
  'countryCode'=>'246',
  'TerritoryName'=>'British Indian Ocean Territory / Diego Garcia',
  'CountryCode'=>'IO',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000039/en'
                },
  'internationalPrefix'=>'00'
}
;
}

1;
