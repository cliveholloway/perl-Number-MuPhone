package Number::MuPhone::Parser::OM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[2-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'23123456'
               },
  'tollFree'=>{
                'exampleNumber'=>'80071234',
                'nationalNumberPattern'=>'8007\\d{4,5}|500\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'[7-9]'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:5|[279]\\d)\\d{6}|800\\d{5,6}'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'90012345',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'900\\d{5}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(2\\d)(\\d{6})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2'
                                              },
                                              {
                                                'leadingDigits'=>'[79]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'([79]\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[58]',
                                                'pattern'=>'([58]00)(\\d{4,6})'
                                              }
                                            ]
                        },
  'CountryCode'=>'OM',
  'TerritoryName'=>'Oman',
  'internationalPrefix'=>'00',
  'countryCode'=>'968',
  'mobileNumberPortableRegion'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009F/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7[19]\\d{6}|9(?:0[1-9]|[1-9]\\d)\\d{5}',
              'exampleNumber'=>'92123456'
            }
}
;
}

1;
