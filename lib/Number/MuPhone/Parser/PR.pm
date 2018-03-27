package Number::MuPhone::Parser::PR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'1',
  'leadingDigits'=>'787|939',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'7872345678'
               },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'exampleNumber'=>'7872345678'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AA/en'
                },
  'internationalPrefix'=>'011',
  'countryCode'=>'1',
  'CountryCode'=>'PR',
  'TerritoryName'=>'Pitcairn Island',
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
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5789]\\d{9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8002345678',
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
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'exampleNumber'=>'9002345678'
                 }
}
;
}

1;
