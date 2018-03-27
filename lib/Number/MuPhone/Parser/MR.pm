package Number::MuPhone::Parser::MR;
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
                 'nationalNumberPattern'=>'25[08]\\d{5}|35\\d{6}|45[1-7]\\d{5}',
                 'exampleNumber'=>'35123456'
               },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}',
                'exampleNumber'=>'80012345'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-48]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'([2-48]\\d)(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'CountryCode'=>'MR',
  'TerritoryName'=>'Mauritania',
  'internationalPrefix'=>'00',
  'countryCode'=>'222',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000087/en',
                                 'http://are.mr/pdfs/pnn2010.pdf'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'22123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[234][0-46-9]\\d{6}'
            }
}
;
}

1;
