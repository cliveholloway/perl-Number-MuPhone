package Number::MuPhone::Parser::KY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'leadingDigits'=>'345',
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000027/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'345(?:32[1-9]|5(?:1[67]|2[5-7]|4[6-8]|76)|9(?:1[67]|2[2-9]|3[689]))\\d{4}',
              'exampleNumber'=>'3453231234'
            },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}|345976\\d{4}',
                   'exampleNumber'=>'9002345678'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'TerritoryName'=>'Cayman Islands',
  'CountryCode'=>'KY',
  'nationalPrefix'=>'1',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'345(?:2(?:22|44)|444|6(?:23|38|40)|7(?:4[35-79]|6[6-9]|77)|8(?:00|1[45]|25|[48]8)|9(?:14|4[035-9]))\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'3452221234'
               },
  'pager'=>{
             'exampleNumber'=>'3458491234',
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'nationalNumberPattern'=>'345849\\d{4}'
           },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3589]\\d{9}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'exampleNumber'=>'8002345678'
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
                        }
}
;
}

1;
