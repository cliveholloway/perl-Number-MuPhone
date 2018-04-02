package Number::MuPhone::Parser::TG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[29]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'9[0-36-9]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'90112345'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[29]\\d{7}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'22212345',
                 'nationalNumberPattern'=>'2(?:2[2-7]|3[23]|44|55|66|77)\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'countryCode'=>'228',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D1/en'
                },
  'CountryCode'=>'TG',
  'TerritoryName'=>'French Southern Territories',
  'internationalPrefix'=>'00'
}
;
}

1;
