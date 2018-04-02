package Number::MuPhone::Parser::PR;
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
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}',
              'exampleNumber'=>'7872345678'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5789]\\d{9}'
                 },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'7872345678'
               },
  'nationalPrefix'=>'1',
  'countryCode'=>'1',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000AA/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'CountryCode'=>'PR',
  'TerritoryName'=>'Pitcairn Island',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9002345678'
                 },
  'internationalPrefix'=>'011',
  'tollFree'=>{
                'exampleNumber'=>'8002345678',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
              },
  'leadingDigits'=>'787|939',
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
