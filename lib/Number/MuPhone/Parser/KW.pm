package Number::MuPhone::Parser::KW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Kuwait',
  'CountryCode'=>'KW',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000073/en'
                },
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:18\\d|2(?:[23]\\d{2}|4(?:[1-35-9]\\d|44)|5(?:0[034]|[2-46]\\d|5[1-3]|7[1-7])))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7,8'
                                    },
                 'exampleNumber'=>'22345678'
               },
  'countryCode'=>'965',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[12569]\\d{6,7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{3,4})',
                                                'leadingDigits'=>'[16]|2(?:[0-35-9]|4[0-35-9])|9[024-9]|52[25]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{5})',
                                                'leadingDigits'=>'244|5(?:[015]|6[56])'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'50012345',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:5(?:[05]\\d{2}|1[0-7]\\d|2(?:22|5[25])|6[56]\\d)|6(?:0[034679]\\d|222|5[015-9]\\d|6\\d{2}|7[067]\\d|9[0369]\\d)|9(?:0[09]\\d|22\\d|4[01479]\\d|55\\d|6[0679]\\d|[79]\\d{2}|8[057-9]\\d))\\d{4}'
            }
}
;
}

1;
