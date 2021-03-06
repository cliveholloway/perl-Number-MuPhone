package Number::MuPhone::Parser::GD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'exampleNumber'=>'5002345678'
                    },
  'leadingDigits'=>'473',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9002123456'
                 },
  'internationalPrefix'=>'011',
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000057/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'CountryCode'=>'GD',
  'TerritoryName'=>'Grenada',
  'countryCode'=>'1',
  'nationalPrefix'=>'1',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'473(?:2(?:3[0-2]|69)|3(?:2[89]|86)|4(?:[06]8|3[5-9]|4[0-49]|5[5-79]|68|73|90)|63[68]|7(?:58|84)|800|938)\\d{4}',
                 'exampleNumber'=>'4732691234'
               },
  'mobile'=>{
              'exampleNumber'=>'4734031234',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'473(?:4(?:0[2-79]|1[04-9]|20|58)|5(?:2[01]|3[3-8])|901)\\d{4}'
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
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[4589]\\d{9}'
                 }
}
;
}

1;
