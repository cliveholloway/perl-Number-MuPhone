package Number::MuPhone::Parser::GN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[367]\\d{7,8}'
                 },
  'voip'=>{
            'nationalNumberPattern'=>'722\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'722123456'
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'3',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'leadingDigits'=>'[67]',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'CountryCode'=>'GN',
  'TerritoryName'=>'Guinea',
  'internationalPrefix'=>'00',
  'countryCode'=>'224',
  'mobile'=>{
              'exampleNumber'=>'601123456',
              'nationalNumberPattern'=>'6[02356]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005B/en'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'30241234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'30(?:24|3[12]|4[1-35-7]|5[13]|6[189]|[78]1|9[1478])\\d{4}'
               }
}
;
}

1;
