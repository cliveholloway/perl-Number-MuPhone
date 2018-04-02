package Number::MuPhone::Parser::BB;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2464123456',
                 'nationalNumberPattern'=>'246(?:2(?:2[78]|7[0-4])|4(?:1[024-6]|2\\d|3[2-9])|5(?:20|[34]\\d|54|7[1-3])|6(?:2\\d|38)|7(?:37|57)|9(?:1[89]|63))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    }
               },
  'nationalPrefix'=>'1',
  'TerritoryName'=>'Barbados',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000013/en'
                },
  'internationalPrefix'=>'011',
  'premiumRate'=>{
                   'exampleNumber'=>'9002123456',
                   'nationalNumberPattern'=>'900\\d{7}|246976\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'10',
                                        'localOnly'=>'7'
                                      }
                 },
  'leadingDigits'=>'246',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2589]\\d{9}'
                 },
  'uan'=>{
           'possibleLengths'=>{
                                'localOnly'=>'7',
                                'national'=>'10'
                              },
           'nationalNumberPattern'=>'246(?:292|367|4(?:1[7-9]|3[01]|44|67)|736)\\d{4}',
           'exampleNumber'=>'2464301234'
         },
  'voip'=>{
            'nationalNumberPattern'=>'24631\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'10',
                                 'localOnly'=>'7'
                               },
            'exampleNumber'=>'2463101234'
          },
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
              'nationalNumberPattern'=>'246(?:2(?:[356]\\d|4[0-57-9]|8[0-79])|45\\d|8(?:[2-5]\\d|83))\\d{4}',
              'exampleNumber'=>'2462501234'
            },
  'countryCode'=>'1',
  'CountryCode'=>'BB',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'exampleNumber'=>'8002123456'
              },
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
