package Number::MuPhone::Parser::QA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{6,7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'33123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[3567]\\d{7}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[28]',
                                                'pattern'=>'([28]\\d{2})(\\d{4})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'([3-7]\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[3-7]'
                                              }
                                            ]
                        },
  'countryCode'=>'974',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'4[04]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'44123456'
               },
  'pager'=>{
             'possibleLengths'=>{
                                  'national'=>'7'
                                },
             'nationalNumberPattern'=>'2(?:[12]\\d|61)\\d{4}',
             'exampleNumber'=>'2123456'
           },
  'TerritoryName'=>'Qatar',
  'CountryCode'=>'QA',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000AB/en',
                                 'http://wtng.info/wtng-qq.html'
                               ]
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8001234'
              },
  'internationalPrefix'=>'00'
}
;
}

1;
