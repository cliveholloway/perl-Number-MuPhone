package Number::MuPhone::Parser::LI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Liechtenstein',
  'CountryCode'=>'LI',
  'nationalPrefixForParsing'=>'0|10(?:01|20|66)',
  'voicemail'=>{
                 'exampleNumber'=>'697861234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'697(?:42|56|[78]\\d)\\d{4}'
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.llv.li/#/11193',
                                 'https://www.itu.int/oth/T020200007B/en'
                               ]
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'80(?:02[28]|9\\d{2})\\d{2}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8002222'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'9002222',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'90(?:02[258]|1(?:23|3[14])|66[136])\\d{2}'
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'6\\d{8}|[23789]\\d{6}'
                 },
  'uan'=>{
           'exampleNumber'=>'8702812',
           'possibleLengths'=>{
                                'national'=>'7'
                              },
           'nationalNumberPattern'=>'870(?:28|87)\\d{2}'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[23789]',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'6[56]'
                                              },
                                              {
                                                'leadingDigits'=>'697',
                                                'pattern'=>'(69)(7\\d{2})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7,9'
                                 },
              'nationalNumberPattern'=>'6(?:5(?:09|1\\d|20)|6(?:0[0-6]|10|2[06-9]|39))\\d{5}|7(?:[37-9]\\d|42|56)\\d{4}',
              'exampleNumber'=>'660234567'
            },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:01|1[27]|3\\d|6[02-578]|96)|3(?:7[0135-7]|8[048]|9[0269]))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2345678'
               },
  'nationalPrefix'=>'0',
  'countryCode'=>'423'
}
;
}

1;
