package Number::MuPhone::Parser::MS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'MS',
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
  'TerritoryName'=>'Montserrat',
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
                   'exampleNumber'=>'9002123456'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5689]\\d{9}'
                 },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'exampleNumber'=>'6644923456',
              'nationalNumberPattern'=>'66449[2-6]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200008F/en'
                },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'664491\\d{4}',
                 'exampleNumber'=>'6644912345'
               },
  'leadingDigits'=>'664',
  'nationalPrefix'=>'1'
}
;
}

1;
