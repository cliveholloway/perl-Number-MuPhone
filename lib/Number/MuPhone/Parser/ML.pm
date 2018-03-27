package Number::MuPhone::Parser::ML;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'ML',
  'TerritoryName'=>'Mali',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[246-9]',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'nationalNumberPattern'=>'80\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[246-9]\\d{7}'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'80012345',
                               'nationalNumberPattern'=>'80\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  }
                             },
  'mobile'=>{
              'exampleNumber'=>'65012345',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:2(?:079|17\\d)|[679]\\d{3}|8[239]\\d{2})\\d{4}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000083/en',
                                 'http://crt-mali.org/pdf/plan_num'
                               ]
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'223',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:0(?:2\\d|7[0-8])|1(?:2[5-7]|[3-689]\\d))|44[1239]\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'20212345'
               }
}
;
}

1;
