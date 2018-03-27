package Number::MuPhone::Parser::NI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'exampleNumber'=>'18001234',
                'nationalNumberPattern'=>'1800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[12578]\\d{7}'
                 },
  'TerritoryName'=>'Nicaragua',
  'CountryCode'=>'NI',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'505',
  'mobile'=>{
              'nationalNumberPattern'=>'5(?:5[0-7]\\d{5}|[78]\\d{6})|7[5-8]\\d{6}|8\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'81234567'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009A/en'
                },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2\\d{7}',
                 'exampleNumber'=>'21234567'
               }
}
;
}

1;
