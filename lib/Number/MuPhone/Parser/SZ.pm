package Number::MuPhone::Parser::SZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'countryCode'=>'268',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000C6/en'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'7[6-8]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'76123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[027]\\d{7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'08001234',
                'nationalNumberPattern'=>'0800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'0800\\d{4}',
                               'exampleNumber'=>'08001234'
                             },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[027]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              }
                                            ]
                        },
  'CountryCode'=>'SZ',
  'TerritoryName'=>'Swaziland',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2[2-5]\\d{6}',
                 'exampleNumber'=>'22171234'
               }
}
;
}

1;
