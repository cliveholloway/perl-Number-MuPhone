package Number::MuPhone::Parser::VI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'1',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'340(?:2(?:01|2[0678]|44|77)|3(?:32|44)|4(?:22|7[34])|5(?:1[34]|55)|6(?:26|4[23]|77|9[023])|7(?:1[2-589]|27|7\\d)|884|998)\\d{4}',
                 'exampleNumber'=>'3406421234'
               },
  'leadingDigits'=>'340',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'340(?:2(?:01|2[0678]|44|77)|3(?:32|44)|4(?:22|7[34])|5(?:1[34]|55)|6(?:26|4[23]|77|9[023])|7(?:1[2-589]|27|7\\d)|884|998)\\d{4}',
              'exampleNumber'=>'3406421234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000DF/en'
                },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'CountryCode'=>'VI',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'($1) $2-$3',
                                                'leadingDigits'=>'',
                                                'intlFormat'=>'$1-$2-$3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Virgin Islands, United States',
  'premiumRate'=>{
                   'exampleNumber'=>'9002345678',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'tollFree'=>{
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8002345678'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3589]\\d{9}'
                 }
}
;
}

1;
