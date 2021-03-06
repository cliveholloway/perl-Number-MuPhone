package Number::MuPhone::Parser::NE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'227',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:0(?:20|3[1-7]|4[134]|5[14]|6[14578]|7[1-578])|1(?:4[145]|5[14]|6[14-68]|7[169]|88))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'20201234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[0289]\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'93123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:8[089]|9\\d)\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[289]|09',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(08)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'08',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'09123456',
                   'nationalNumberPattern'=>'09\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'tollFree'=>{
                'exampleNumber'=>'08123456',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'08\\d{6}'
              },
  'TerritoryName'=>'Niger',
  'CountryCode'=>'NE',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009B/en'
                }
}
;
}

1;
