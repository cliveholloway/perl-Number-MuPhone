package Number::MuPhone::Parser::KN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'KN',
  'TerritoryName'=>'Saint Kitts and Nevis',
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
  'premiumRate'=>{
                   'exampleNumber'=>'9002123456',
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      }
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[589]\\d{9}'
                 },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B0/en'
                },
  'mobile'=>{
              'exampleNumber'=>'8697652917',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'869(?:5(?:5[6-8]|6[5-7])|66\\d|76[02-7])\\d{4}'
            },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'fixedLine'=>{
                 'exampleNumber'=>'8692361234',
                 'nationalNumberPattern'=>'869(?:2(?:29|36)|302|4(?:6[015-9]|70))\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    }
               },
  'leadingDigits'=>'869',
  'nationalPrefix'=>'1'
}
;
}

1;
