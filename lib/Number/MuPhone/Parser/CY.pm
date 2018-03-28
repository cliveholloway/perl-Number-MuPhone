package Number::MuPhone::Parser::CY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'357',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000034/en'
                },
  'mobile'=>{
              'exampleNumber'=>'96123456',
              'nationalNumberPattern'=>'9[4-79]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'700\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'exampleNumber'=>'70012345'
                    },
  'premiumRate'=>{
                   'exampleNumber'=>'90012345',
                   'nationalNumberPattern'=>'90[09]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'tollFree'=>{
                'exampleNumber'=>'80001234',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[257-9]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{6})'
                                              }
                                            ]
                        },
  'CountryCode'=>'CY',
  'TerritoryName'=>'Cyprus',
  'uan'=>{
           'exampleNumber'=>'77123456',
           'nationalNumberPattern'=>'(?:50|77)\\d{6}',
           'possibleLengths'=>{
                                'national'=>'8'
                              }
         },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[2-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22345678'
               },
  'sharedCost'=>{
                  'exampleNumber'=>'80112345',
                  'nationalNumberPattern'=>'80[1-9]\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                }
}
;
}

1;
