package Number::MuPhone::Parser::CY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'9[4-79]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'96123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[257-9]\\d{7}'
                 },
  'uan'=>{
           'exampleNumber'=>'77123456',
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'nationalNumberPattern'=>'(?:50|77)\\d{6}'
         },
  'fixedLine'=>{
                 'exampleNumber'=>'22345678',
                 'nationalNumberPattern'=>'2[2-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'357',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000034/en'
                },
  'CountryCode'=>'CY',
  'TerritoryName'=>'Cyprus',
  'sharedCost'=>{
                  'exampleNumber'=>'80112345',
                  'nationalNumberPattern'=>'80[1-9]\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'90[09]\\d{5}',
                   'exampleNumber'=>'90012345'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}',
                'exampleNumber'=>'80001234'
              },
  'internationalPrefix'=>'00',
  'personalNumber'=>{
                      'nationalNumberPattern'=>'700\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'exampleNumber'=>'70012345'
                    }
}
;
}

1;
