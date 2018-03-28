package Number::MuPhone::Parser::SM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixForParsing'=>'(?:0549)?([89]\\d{5})',
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'5[158]\\d{6}',
            'exampleNumber'=>'58001110'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[05-7]\\d{7,9}'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'71123456',
                   'nationalNumberPattern'=>'7[178]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[5-7]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'',
                                                'intlFormat'=>'($1) $2',
                                                'pattern'=>'(0549)(\\d{6})'
                                              },
                                              {
                                                'pattern'=>'(\\d{6})',
                                                'intlFormat'=>'(0549) $1',
                                                'format'=>'0549 $1',
                                                'leadingDigits'=>'[89]'
                                              }
                                            ]
                        },
  'CountryCode'=>'SM',
  'TerritoryName'=>'San Marino',
  'nationalPrefixTransformRule'=>'0549$1',
  'internationalPrefix'=>'00',
  'countryCode'=>'378',
  'mobile'=>{
              'nationalNumberPattern'=>'6[16]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'66661212'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000B5/en',
                                 'http://en.wikipedia.org/wiki/%2B39',
                                 'http://en.wikipedia.org/wiki/%2B378'
                               ]
                },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'0549(?:8[0157-9]|9\\d)\\d{4}',
                 'exampleNumber'=>'0549886377'
               }
}
;
}

1;
