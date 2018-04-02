package Number::MuPhone::Parser::ZM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([29]\\d)(\\d{7})',
                                                'leadingDigits'=>'[29]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(800)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'955123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9(?:5[034589]|[67]\\d)\\d{6}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[289]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'21[1-8]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'211234567'
               },
  'countryCode'=>'260',
  'nationalPrefix'=>'0',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E8/en'
                },
  'CountryCode'=>'ZM',
  'TerritoryName'=>'Zambia',
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}',
                'exampleNumber'=>'800123456'
              }
}
;
}

1;
