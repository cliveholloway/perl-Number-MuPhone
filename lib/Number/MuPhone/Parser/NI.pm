package Number::MuPhone::Parser::NI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2\\d{7}',
                 'exampleNumber'=>'21234567'
               },
  'countryCode'=>'505',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'81234567',
              'nationalNumberPattern'=>'5(?:5[0-7]\\d{5}|[78]\\d{6})|7[5-8]\\d{6}|8\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[12578]\\d{7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'18001234',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'1800\\d{4}'
              },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009A/en'
                },
  'CountryCode'=>'NI',
  'TerritoryName'=>'Nicaragua'
}
;
}

1;
