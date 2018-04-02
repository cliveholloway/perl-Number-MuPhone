package Number::MuPhone::Parser::KI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'voip'=>{
            'exampleNumber'=>'30010000',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'30(?:0[01]\\d{2}|12(?:11|20))\\d{2}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2458]\\d{4}|3\\d{4,7}|7\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'72012345',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7[23]0\\d{5}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'countryCode'=>'686',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:[24]\\d|3[1-9]|50|8[0-5])\\d{3}|7(?:27|31|5[0-4])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'5,8'
                                    },
                 'exampleNumber'=>'31234'
               },
  'nationalPrefixForParsing'=>'0',
  'CountryCode'=>'KI',
  'TerritoryName'=>'Kiribati',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000071/en'
                },
  'internationalPrefix'=>'00'
}
;
}

1;
