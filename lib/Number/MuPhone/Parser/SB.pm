package Number::MuPhone::Parser::SB;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'40123',
                 'nationalNumberPattern'=>'(?:1[4-79]|[23]\\d|4[0-2]|5[03]|6[0-37])\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'5'
                                    }
               },
  'countryCode'=>'677',
  'internationalPrefix'=>'0[01]',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BF/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'5,7'
                                 },
              'nationalNumberPattern'=>'48\\d{3}|7(?:30|[46-8]\\d|5[025-9]|9[0-5])\\d{4}|8[4-9]\\d{5}|9(?:1[2-9]|2[013-9]|3[0-2]|[46]\\d|5[0-46-9]|7[0-689]|8[0-79]|9[0-8])\\d{4}',
              'exampleNumber'=>'7421234'
            },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'5'
                               },
            'nationalNumberPattern'=>'5[12]\\d{3}',
            'exampleNumber'=>'51123'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{4,6}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'1[38]\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'5'
                                   },
                'exampleNumber'=>'18123'
              },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{5})',
                                                'leadingDigits'=>'[7-9]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'CountryCode'=>'SB',
  'TerritoryName'=>'Solomon Islands'
}
;
}

1;
