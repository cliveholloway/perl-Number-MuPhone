package Number::MuPhone::Parser::AS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'6846221234',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'6846(?:22|33|44|55|77|88|9[19])\\d{4}'
               },
  'leadingDigits'=>'684',
  'nationalPrefix'=>'1',
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
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5689]\\d{9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'
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
  'CountryCode'=>'AS',
  'TerritoryName'=>'American Samoa',
  'countryCode'=>'1',
  'internationalPrefix'=>'011',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000004/en'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10',
                                   'localOnly'=>'7'
                                 },
              'nationalNumberPattern'=>'684(?:2(?:5[2468]|72)|7(?:3[13]|70))\\d{4}',
              'exampleNumber'=>'6847331234'
            }
}
;
}

1;
