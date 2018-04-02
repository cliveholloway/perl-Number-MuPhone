package Number::MuPhone::Parser::SZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000C6/en'
                },
  'CountryCode'=>'SZ',
  'TerritoryName'=>'Swaziland',
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'0800\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'exampleNumber'=>'08001234'
                             },
  'tollFree'=>{
                'exampleNumber'=>'08001234',
                'nationalNumberPattern'=>'0800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'internationalPrefix'=>'00',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'[027]'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'76123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7[6-8]\\d{6}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[027]\\d{7}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'22171234',
                 'nationalNumberPattern'=>'2[2-5]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'countryCode'=>'268'
}
;
}

1;
