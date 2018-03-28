package Number::MuPhone::Parser::TT;
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
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9002345678'
                 },
  'TerritoryName'=>'Trinidad and Tobago',
  'CountryCode'=>'TT',
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'868619\\d{4}',
                 'exampleNumber'=>'8686191234'
               },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'868(?:2(?:6[6-9]|[789]\\d)|3(?:0[1-9]|1[02-9]|[2-9]\\d)|4[6-9]\\d|6(?:20|78|8\\d)|7(?:0[1-9]|1[02-9]|[2-9]\\d))\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'exampleNumber'=>'8682911234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D4/en'
                },
  'leadingDigits'=>'868',
  'tollFree'=>{
                'exampleNumber'=>'8002345678',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[589]\\d{9}'
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
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'868(?:2(?:01|[23]\\d)|6(?:0[79]|1[02-8]|2[1-9]|[3-69]\\d|7[0-79])|82[124])\\d{4}',
                 'exampleNumber'=>'8682211234'
               },
  'nationalPrefix'=>'1'
}
;
}

1;
