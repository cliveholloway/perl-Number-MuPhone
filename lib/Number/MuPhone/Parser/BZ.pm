package Number::MuPhone::Parser::BZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{6}|0\\d{10}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1-$2',
                                                'leadingDigits'=>'[2-8]',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1-$2-$3-$4',
                                                'pattern'=>'(0)(800)(\\d{4})(\\d{3})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'6221234',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'6[0-35-7]\\d{5}'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'2221234',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:[02]\\d|36)|[3-58][02]\\d|7(?:[02]\\d|32))\\d{4}'
               },
  'countryCode'=>'501',
  'TerritoryName'=>'Belize',
  'CountryCode'=>'BZ',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000016/en'
                },
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'11'
                                   },
                'nationalNumberPattern'=>'0800\\d{7}',
                'exampleNumber'=>'08001234123'
              }
}
;
}

1;
