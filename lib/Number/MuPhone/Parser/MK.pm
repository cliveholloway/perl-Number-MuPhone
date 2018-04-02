package Number::MuPhone::Parser::MK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000CE/en'
                },
  'CountryCode'=>'MK',
  'TerritoryName'=>'Macedonia, Former Yugoslav Rep. of',
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'8(?:0[1-9]|[1-9]\\d)\\d{5}',
                  'exampleNumber'=>'80123456'
                },
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'50012345',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'5[02-9]\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(2)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'2',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([347]\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[347]'
                                              },
                                              {
                                                'leadingDigits'=>'[58]',
                                                'pattern'=>'([58]\\d{2})(\\d)(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'7(?:[0-25-8]\\d{2}|32\\d|421|9[23]\\d)\\d{4}',
              'exampleNumber'=>'72345678'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-578]\\d{7}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'22212345',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:[23]\\d|5[124578]|6[01])|3(?:1[3-6]|[23][2-6]|4[2356])|4(?:[23][2-6]|4[3-6]|5[256]|6[25-8]|7[24-6]|8[4-6]))\\d{5}'
               },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'389',
  'nationalPrefix'=>'0'
}
;
}

1;
