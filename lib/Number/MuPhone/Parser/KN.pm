package Number::MuPhone::Parser::KN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Saint Kitts and Nevis',
  'CountryCode'=>'KN',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B0/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'internationalPrefix'=>'011',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9002123456'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
              },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'exampleNumber'=>'5002345678'
                    },
  'leadingDigits'=>'869',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[589]\\d{9}'
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
              'exampleNumber'=>'8697652917',
              'nationalNumberPattern'=>'869(?:5(?:5[6-8]|6[5-7])|66\\d|76[02-7])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 }
            },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'869(?:2(?:29|36)|302|4(?:6[015-9]|70))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'exampleNumber'=>'8692361234'
               },
  'nationalPrefix'=>'1',
  'countryCode'=>'1'
}
;
}

1;
