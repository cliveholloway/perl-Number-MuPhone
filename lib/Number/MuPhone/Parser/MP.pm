package Number::MuPhone::Parser::MP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8002123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5689]\\d{9}'
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
  'CountryCode'=>'MP',
  'TerritoryName'=>'Northern Mariana Islands',
  'internationalPrefix'=>'011',
  'countryCode'=>'1',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000EE/en',
                                 'http://www.cnmiphonebook.com/'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'670(?:2(?:3[3-7]|56|8[5-8])|32[1238]|4(?:33|8[348])|5(?:32|55|88)|6(?:64|70|82)|78[3589]|8[3-9]8|989)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'exampleNumber'=>'6702345678'
            },
  'leadingDigits'=>'670',
  'fixedLine'=>{
                 'exampleNumber'=>'6702345678',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'670(?:2(?:3[3-7]|56|8[5-8])|32[1238]|4(?:33|8[348])|5(?:32|55|88)|6(?:64|70|82)|78[3589]|8[3-9]8|989)\\d{4}'
               },
  'nationalPrefix'=>'1'
}
;
}

1;
