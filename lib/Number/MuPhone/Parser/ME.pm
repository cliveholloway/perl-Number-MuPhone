package Number::MuPhone::Parser::ME;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'exampleNumber'=>'67622901',
              'nationalNumberPattern'=>'6(?:00\\d|3[024]\\d|6[0-25]\\d|[7-9]\\d{2})\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2-57-9]|6[036-9]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'uan'=>{
           'nationalNumberPattern'=>'77[1-9]\\d{5}',
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'exampleNumber'=>'77273012'
         },
  'voip'=>{
            'exampleNumber'=>'78108780',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'78[1-49]\\d{5}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7,8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'382',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'30234567',
                 'nationalNumberPattern'=>'(?:20[2-8]|3(?:0[2-7]|[12][235-7]|3[24-7])|4(?:0[2-467]|1[267])|5(?:0[2467]|1[267]|2[2367]))\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'6'
                                    }
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000DA/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Montenegro',
                                 'http://www.ekip.me/numeracija/dodijeljena.php'
                               ]
                },
  'CountryCode'=>'ME',
  'TerritoryName'=>'Montenegro',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'80[0-258]\\d{5}',
                'exampleNumber'=>'80080002'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'94515151',
                   'nationalNumberPattern'=>'(?:9(?:4[1568]|5[178]))\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 }
}
;
}

1;
