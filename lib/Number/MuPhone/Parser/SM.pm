package Number::MuPhone::Parser::SM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'0549886377',
                 'nationalNumberPattern'=>'0549(?:8[0157-9]|9\\d)\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'10'
                                    }
               },
  'countryCode'=>'378',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[05-7]\\d{7,9}'
                 },
  'voip'=>{
            'exampleNumber'=>'58001110',
            'nationalNumberPattern'=>'5[158]\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[5-7]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'intlFormat'=>'($1) $2',
                                                'pattern'=>'(0549)(\\d{6})',
                                                'leadingDigits'=>''
                                              },
                                              {
                                                'format'=>'0549 $1',
                                                'intlFormat'=>'(0549) $1',
                                                'leadingDigits'=>'[89]',
                                                'pattern'=>'(\\d{6})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'6[16]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'66661212'
            },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'7[178]\\d{6}',
                   'exampleNumber'=>'71123456'
                 },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'San Marino',
  'CountryCode'=>'SM',
  'nationalPrefixForParsing'=>'(?:0549)?([89]\\d{5})',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000B5/en',
                                 'http://en.wikipedia.org/wiki/%2B39',
                                 'http://en.wikipedia.org/wiki/%2B378'
                               ]
                },
  'nationalPrefixTransformRule'=>'0549$1'
}
;
}

1;
