package Number::MuPhone::Parser::TG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'9[0-36-9]\\d{6}',
              'exampleNumber'=>'90112345'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D1/en'
                },
  'countryCode'=>'228',
  'internationalPrefix'=>'00',
  'CountryCode'=>'TG',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[29]',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'French Southern Territories',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[29]\\d{7}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'22212345',
                 'nationalNumberPattern'=>'2(?:2[2-7]|3[23]|44|55|66|77)\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               }
}
;
}

1;
