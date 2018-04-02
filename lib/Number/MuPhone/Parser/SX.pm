package Number::MuPhone::Parser::SX;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'7215(?:4[2-8]|8[239]|9[056])\\d{4}',
                 'exampleNumber'=>'7215425678'
               },
  'nationalPrefix'=>'1',
  'countryCode'=>'1',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5789]\\d{9}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'intlFormat'=>'$1-$2-$3',
                                                'format'=>'($1) $2-$3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'7215205678',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'7215(?:1[02]|2\\d|5[034679]|8[014-8])\\d{4}'
            },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'9002123456',
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      }
                 },
  'internationalPrefix'=>'011',
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'
                    },
  'leadingDigits'=>'721',
  'TerritoryName'=>'Sint Maarten',
  'CountryCode'=>'SX',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.nanpa.com/pdf/PL_429.pdf',
                                 'http://www.itu.int/oth/T02020000F7/en'
                               ]
                }
}
;
}

1;
