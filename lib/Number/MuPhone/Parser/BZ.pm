package Number::MuPhone::Parser::BZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'BZ',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[2-8]',
                                                'format'=>'$1-$2',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(0)(800)(\\d{4})(\\d{3})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1-$2-$3-$4'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Belize',
  'tollFree'=>{
                'exampleNumber'=>'08001234123',
                'nationalNumberPattern'=>'0800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'11'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{6}|0\\d{10}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'6[0-35-7]\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'6221234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000016/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'501',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:[02]\\d|36)|[3-58][02]\\d|7(?:[02]\\d|32))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2221234'
               }
}
;
}

1;
