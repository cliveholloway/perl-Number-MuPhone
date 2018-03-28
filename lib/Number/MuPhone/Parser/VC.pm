package Number::MuPhone::Parser::VC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'011',
  'countryCode'=>'1',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B3/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'784(?:4(?:3[0-4]|5[45]|89|9[0-58])|5(?:2[6-9]|3[0-4]))\\d{4}',
              'exampleNumber'=>'7844301234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5789]\\d{9}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8002345678'
              },
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
  'CountryCode'=>'VC',
  'TerritoryName'=>'Saint Vincent and the Grenadines',
  'nationalPrefix'=>'1',
  'leadingDigits'=>'784',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'784(?:266|3(?:6[6-9]|7\\d|8[0-24-6])|4(?:38|5[0-36-8]|8[0-8])|5(?:55|7[0-2]|93)|638|784)\\d{4}',
                 'exampleNumber'=>'7842661234'
               }
}
;
}

1;
