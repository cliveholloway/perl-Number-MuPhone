package Number::MuPhone::Parser::TC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
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
                'exampleNumber'=>'8002345678',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5689]\\d{9}'
                 },
  'nationalPrefix'=>'1',
  'fixedLine'=>{
                 'exampleNumber'=>'6497121234',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'649(?:712|9(?:4\\d|50))\\d{4}'
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'649(?:2(?:3[129]|4[1-7])|3(?:3[1-389]|4[1-8])|4[34][1-3])\\d{4}',
              'exampleNumber'=>'6492311234'
            },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000D8/en'
                },
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'CountryCode'=>'TC',
  'TerritoryName'=>'Turks and Caicos Islands',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'exampleNumber'=>'9002345678'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'
                    },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'10',
                                 'localOnly'=>'7'
                               },
            'nationalNumberPattern'=>'64971[01]\\d{4}',
            'exampleNumber'=>'6497101234'
          },
  'leadingDigits'=>'649'
}
;
}

1;
