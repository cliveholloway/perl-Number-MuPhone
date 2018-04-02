package Number::MuPhone::Parser::FJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'11'
                                   },
                'nationalNumberPattern'=>'0800\\d{7}',
                'exampleNumber'=>'08001234567'
              },
  'internationalPrefix'=>'0(?:0|52)',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000048/en',
                                 'http://www.tfl.com.fj'
                               ]
                },
  'preferredInternationalPrefix'=>'00',
  'CountryCode'=>'FJ',
  'TerritoryName'=>'Fiji',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:3[0-5]|6[25-7]|8[58])\\d{5}',
                 'exampleNumber'=>'3212345'
               },
  'countryCode'=>'679',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[35-9]',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{4})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'7012345',
              'nationalNumberPattern'=>'(?:5[018]|[79]\\d|8[034679])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[35-9]\\d{6}|0\\d{10}'
                 }
}
;
}

1;
