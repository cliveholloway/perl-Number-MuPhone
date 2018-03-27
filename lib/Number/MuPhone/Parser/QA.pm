package Number::MuPhone::Parser::QA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'974',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'pager'=>{
             'exampleNumber'=>'2123456',
             'nationalNumberPattern'=>'2(?:[12]\\d|61)\\d{4}',
             'possibleLengths'=>{
                                  'national'=>'7'
                                }
           },
  'mobile'=>{
              'exampleNumber'=>'33123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[3567]\\d{7}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000AB/en',
                                 'http://wtng.info/wtng-qq.html'
                               ]
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{6,7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8001234',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'800\\d{4}'
              },
  'TerritoryName'=>'Qatar',
  'CountryCode'=>'QA',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[28]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'([28]\\d{2})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'([3-7]\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[3-7]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'4[04]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'44123456'
               }
}
;
}

1;
