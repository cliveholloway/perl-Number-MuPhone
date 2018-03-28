package Number::MuPhone::Parser::AI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2644612345',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'2644(?:6[12]|9[78])\\d{4}'
               },
  'leadingDigits'=>'264',
  'nationalPrefix'=>'1',
  'CountryCode'=>'AI',
  'TerritoryName'=>'Anguilla',
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
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'
                    },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2589]\\d{9}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000007/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'264(?:235|476|5(?:3[6-9]|8[1-4])|7(?:29|72))\\d{4}',
              'exampleNumber'=>'2642351234'
            },
  'countryCode'=>'1',
  'internationalPrefix'=>'011'
}
;
}

1;
