package Number::MuPhone::Parser::TD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'22501234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'22(?:[3789]0|5[0-5]|6[89])\\d{4}'
               },
  'countryCode'=>'235',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'63012345',
              'nationalNumberPattern'=>'(?:6[023568]\\d|77\\d|9\\d{2})\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2679]\\d{7}'
                 },
  'internationalPrefix'=>'00|16',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000029/en'
                },
  'preferredInternationalPrefix'=>'00',
  'CountryCode'=>'TD',
  'TerritoryName'=>'Chad'
}
;
}

1;
