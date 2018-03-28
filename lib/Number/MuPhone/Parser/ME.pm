package Number::MuPhone::Parser::ME;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'nationalNumberPattern'=>'77[1-9]\\d{5}',
           'exampleNumber'=>'77273012'
         },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:20[2-8]|3(?:0[2-7]|[12][235-7]|3[24-7])|4(?:0[2-467]|1[267])|5(?:0[2467]|1[267]|2[2367]))\\d{5}',
                 'exampleNumber'=>'30234567'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000DA/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Montenegro',
                                 'http://www.ekip.me/numeracija/dodijeljena.php'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'6(?:00\\d|3[024]\\d|6[0-25]\\d|[7-9]\\d{2})\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'67622901'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'382',
  'CountryCode'=>'ME',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[2-57-9]|6[036-9]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Montenegro',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7,8}'
                 },
  'voip'=>{
            'exampleNumber'=>'78108780',
            'nationalNumberPattern'=>'78[1-49]\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[0-258]\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80080002'
              },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:9(?:4[1568]|5[178]))\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'94515151'
                 }
}
;
}

1;
