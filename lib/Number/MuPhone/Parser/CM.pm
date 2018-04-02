package Number::MuPhone::Parser::CM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2368]\\d{7,8}'
                 },
  'mobile'=>{
              'exampleNumber'=>'671234567',
              'nationalNumberPattern'=>'6[5-9]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([26])(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[26]',
                                                'format'=>'$1 $2 $3 $4 $5'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[23]|88',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'countryCode'=>'237',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'2(?:22|33|4[23])\\d{6}',
                 'exampleNumber'=>'222123456'
               },
  'TerritoryName'=>'Cameroon',
  'CountryCode'=>'CM',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000024/en',
                                 'http://www.itu.int/dms_pub/itu-t/opb/sp/T-SP-OB.1063-2014-OAS-PDF-E.pdf'
                               ]
                },
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'88\\d{6}',
                'exampleNumber'=>'88012345'
              }
}
;
}

1;
