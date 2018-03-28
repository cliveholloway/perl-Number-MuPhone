package Number::MuPhone::Parser::ZM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'211234567',
                 'nationalNumberPattern'=>'21[1-8]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'nationalPrefix'=>'0',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}',
                'exampleNumber'=>'800123456'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[289]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[29]',
                                                'pattern'=>'([29]\\d)(\\d{7})'
                                              },
                                              {
                                                'pattern'=>'(800)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8'
                                              }
                                            ]
                        },
  'CountryCode'=>'ZM',
  'TerritoryName'=>'Zambia',
  'internationalPrefix'=>'00',
  'countryCode'=>'260',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E8/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9(?:5[034589]|[67]\\d)\\d{6}',
              'exampleNumber'=>'955123456'
            }
}
;
}

1;
