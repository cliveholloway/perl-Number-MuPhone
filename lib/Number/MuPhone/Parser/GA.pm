package Number::MuPhone::Parser::GA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'0?\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[2-7]',
                                                'nationalPrefixFormattingRule'=>'0$FG',
                                                'pattern'=>'(\\d)(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'CountryCode'=>'GA',
  'TerritoryName'=>'Gabon',
  'internationalPrefix'=>'00',
  'countryCode'=>'241',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200004E/en',
                                 'http://www.arcep.ga'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7,8'
                                 },
              'nationalNumberPattern'=>'0?[2-7]\\d{6}',
              'exampleNumber'=>'06031234'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'01441234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'01\\d{6}'
               }
}
;
}

1;
