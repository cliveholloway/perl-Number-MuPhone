package Number::MuPhone::Parser::BM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
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
              'nationalNumberPattern'=>'441(?:[37]\\d|5[0-39])\\d{5}',
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'4413701234'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[4589]\\d{9}'
                 },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'441(?:2(?:02|23|61|[3479]\\d)|[46]\\d{2}|5(?:4\\d|60|89)|824)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'exampleNumber'=>'4412345678'
               },
  'nationalPrefix'=>'1',
  'countryCode'=>'1',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000018/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'CountryCode'=>'BM',
  'TerritoryName'=>'Bermuda',
  'internationalPrefix'=>'011',
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
              },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'exampleNumber'=>'9002123456'
                 },
  'leadingDigits'=>'441',
  'personalNumber'=>{
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'exampleNumber'=>'5002345678'
                    }
}
;
}

1;
