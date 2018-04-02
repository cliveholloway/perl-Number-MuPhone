package Number::MuPhone::Parser::GW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'443\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'443201234'
               },
  'countryCode'=>'245',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'44|9[567]',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'40',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'955012345',
              'nationalNumberPattern'=>'9(?:5(?:5\\d|6[0-2])|6(?:5[0-2]|6\\d|9[012])|77\\d)\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:4(?:0\\d{5}|4\\d{7})|9\\d{8})'
                 },
  'voip'=>{
            'exampleNumber'=>'4012345',
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'nationalNumberPattern'=>'40\\d{5}'
          },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005C/en'
                },
  'CountryCode'=>'GW',
  'TerritoryName'=>'Guinea-Bissau'
}
;
}

1;
