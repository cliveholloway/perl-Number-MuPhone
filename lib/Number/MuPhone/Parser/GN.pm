package Number::MuPhone::Parser::GN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'224',
  'fixedLine'=>{
                 'exampleNumber'=>'30241234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'30(?:24|3[12]|4[1-35-7]|5[13]|6[189]|[78]1|9[1478])\\d{4}'
               },
  'mobile'=>{
              'exampleNumber'=>'601123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'6[02356]\\d{7}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'3',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[67]',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'722\\d{6}',
            'exampleNumber'=>'722123456'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[367]\\d{7,8}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005B/en'
                },
  'CountryCode'=>'GN',
  'TerritoryName'=>'Guinea'
}
;
}

1;
