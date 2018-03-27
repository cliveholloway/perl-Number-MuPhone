package Number::MuPhone::Parser::DM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'1',
  'leadingDigits'=>'767',
  'fixedLine'=>{
                 'exampleNumber'=>'7674201234',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'767(?:2(?:55|66)|4(?:2[01]|4[0-25-9])|50[0-4]|70[1-3])\\d{4}'
               },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'767(?:2(?:[234689]5|7[5-7])|31[5-7]|61[2-7])\\d{4}',
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'7672251234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200003B/en'
                },
  'internationalPrefix'=>'011',
  'countryCode'=>'1',
  'CountryCode'=>'DM',
  'TerritoryName'=>'Dominica',
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
  'tollFree'=>{
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8002123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[57-9]\\d{9}'
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
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'
                    }
}
;
}

1;
