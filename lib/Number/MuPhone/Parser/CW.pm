package Number::MuPhone::Parser::CW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Curaçao',
  'CountryCode'=>'CW',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000F5/en'
                },
  'internationalPrefix'=>'00',
  'sharedCost'=>{
                  'nationalNumberPattern'=>'60[0-2]\\d{4}',
                  'possibleLengths'=>{
                                       'national'=>'7'
                                     },
                  'exampleNumber'=>'6001234'
                },
  'mainCountryForCode'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[169]\\d{6,7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[13-7]',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(9)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'9'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'95181234',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'9(?:5(?:[12467]\\d|3[01])|6(?:[15-9]\\d|3[01]))\\d{4}'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'94151234',
                 'nationalNumberPattern'=>'9(?:[48]\\d{2}|50\\d|7(?:2[0-24]|[34]\\d|6[35-7]|77|8[7-9]))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'pager'=>{
             'nationalNumberPattern'=>'955\\d{5}',
             'possibleLengths'=>{
                                  'national'=>'8'
                                },
             'exampleNumber'=>'95581234'
           },
  'countryCode'=>'599'
}
;
}

1;
