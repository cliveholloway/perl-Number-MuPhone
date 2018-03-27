package Number::MuPhone::Parser::BM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'BM',
  'TerritoryName'=>'Bermuda',
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
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'
                    },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9002123456'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8002123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[4589]\\d{9}'
                 },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'441(?:[37]\\d|5[0-39])\\d{5}',
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'4413701234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000018/en'
                },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'441(?:2(?:02|23|61|[3479]\\d)|[46]\\d{2}|5(?:4\\d|60|89)|824)\\d{4}',
                 'exampleNumber'=>'4412345678'
               },
  'leadingDigits'=>'441',
  'nationalPrefix'=>'1'
}
;
}

1;
