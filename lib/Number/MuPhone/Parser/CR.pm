package Number::MuPhone::Parser::CR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'voip'=>{
            'exampleNumber'=>'40001234',
            'nationalNumberPattern'=>'210[0-6]\\d{4}|4\\d{7}|5100\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24-9]\\d{7,9}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'5(?:0[01]|7[0-3])\\d{5}|6(?:[0-4]\\d{3}|500[01])\\d{3}|(?:7[0-3]|8[3-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'83123456'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'[24-7]|8[3-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[89]0',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'format'=>'$1-$2-$3'
                                              }
                                            ]
                        },
  'countryCode'=>'506',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[0-24-7]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22123456'
               },
  'carrierCodeFormattingRule'=>'$CC $FG',
  'TerritoryName'=>'Costa Rica',
  'CountryCode'=>'CR',
  'nationalPrefixForParsing'=>'(19(?:0[012468]|1[09]|20|66|77|99))',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000030/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Costa_Rica'
                               ]
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}',
                'exampleNumber'=>'8001234567'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'9001234567',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'90[059]\\d{7}'
                 }
}
;
}

1;
