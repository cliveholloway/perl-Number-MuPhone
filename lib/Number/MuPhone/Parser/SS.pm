package Number::MuPhone::Parser::SS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[19]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'977123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:12|9[1257])\\d{7}'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'181234567',
                 'nationalNumberPattern'=>'18\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'countryCode'=>'211',
  'nationalPrefix'=>'0',
  'TerritoryName'=>'South Sudan',
  'CountryCode'=>'SS',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000F9/en',
                                 'http://en.wikipedia.org/wiki/+211'
                               ]
                },
  'internationalPrefix'=>'00'
}
;
}

1;
