package Number::MuPhone::Parser::SB;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'voip'=>{
            'exampleNumber'=>'51123',
            'nationalNumberPattern'=>'5[12]\\d{3}',
            'possibleLengths'=>{
                                 'national'=>'5'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{4,6}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'48\\d{3}|7(?:30|[46-8]\\d|5[025-9]|9[0-5])\\d{4}|8[4-9]\\d{5}|9(?:1[2-9]|2[013-9]|3[0-2]|[46]\\d|5[0-46-9]|7[0-689]|8[0-79]|9[0-8])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'5,7'
                                 },
              'exampleNumber'=>'7421234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[7-9]',
                                                'pattern'=>'(\\d{2})(\\d{5})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'countryCode'=>'677',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:1[4-79]|[23]\\d|4[0-2]|5[03]|6[0-37])\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    },
                 'exampleNumber'=>'40123'
               },
  'TerritoryName'=>'Solomon Islands',
  'CountryCode'=>'SB',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BF/en'
                },
  'internationalPrefix'=>'0[01]',
  'tollFree'=>{
                'nationalNumberPattern'=>'1[38]\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'5'
                                   },
                'exampleNumber'=>'18123'
              }
}
;
}

1;
