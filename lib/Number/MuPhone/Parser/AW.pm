package Number::MuPhone::Parser::AW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Aruba',
  'CountryCode'=>'AW',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200000B/en'
                },
  'tollFree'=>{
                'exampleNumber'=>'8001234',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'800\\d{4}'
              },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'900\\d{4}',
                   'exampleNumber'=>'9001234'
                 },
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[25-9]\\d{6}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'28\\d{5}|501\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'exampleNumber'=>'5011234'
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'(?:5(?:6\\d|9[2-478])|6(?:[039]0|22|4[01]|6[0-2])|7[34]\\d|9(?:6[45]|9[4-8]))\\d{4}',
              'exampleNumber'=>'5601234'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'5212345',
                 'nationalNumberPattern'=>'5(?:2\\d|8[1-9])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'countryCode'=>'297'
}
;
}

1;
