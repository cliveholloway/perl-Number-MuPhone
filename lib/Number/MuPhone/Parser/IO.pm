package Number::MuPhone::Parser::IO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'3709100',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'37\\d{5}'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'246',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000039/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'38\\d{5}',
              'exampleNumber'=>'3801234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'3\\d{6}'
                 },
  'TerritoryName'=>'British Indian Ocean Territory / Diego Garcia',
  'CountryCode'=>'IO',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              }
                                            ]
                        }
}
;
}

1;
