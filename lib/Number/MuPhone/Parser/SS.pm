package Number::MuPhone::Parser::SS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'SS',
  'TerritoryName'=>'South Sudan',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[19]\\d{8}'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000F9/en',
                                 'http://en.wikipedia.org/wiki/+211'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:12|9[1257])\\d{7}',
              'exampleNumber'=>'977123456'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'211',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'18\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'181234567'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
