package Number::MuPhone::Parser::BG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2123456',
                 'possibleLengths'=>{
                                      'national'=>'[6-8]',
                                      'localOnly'=>'4,5'
                                    },
                 'nationalNumberPattern'=>'2\\d{5,7}|(?:[36]\\d|5[1-9]|8[1-6]|9[1-7])\\d{5,6}|(?:4(?:[124-7]\\d|3[1-6])|7(?:0[1-9]|[1-9]\\d))\\d{4,5}'
               },
  'nationalPrefix'=>'0',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'90123456'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'70012345',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'700\\d{5}'
                    },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23567]\\d{5,7}|[489]\\d{6,8}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}'
              },
  'TerritoryName'=>'Bulgaria',
  'CountryCode'=>'BG',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'2',
                                                'pattern'=>'(2)(\\d)(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2',
                                                'pattern'=>'(2)(\\d{3})(\\d{3,4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'43[124-7]|70[1-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{2})',
                                                'leadingDigits'=>'43[124-7]|70[1-9]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[78]00',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'999',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2,3})',
                                                'leadingDigits'=>'[356]|4[124-7]|7[1-9]|8[1-6]|9[1-7]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'48|8[7-9]|9[08]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})'
                                              }
                                            ]
                        },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'359',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000020/en',
                                 'https://en.wikipedia.org/wiki/Telephone_numbers_in_Bulgaria'
                               ]
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'exampleNumber'=>'48123456',
              'possibleLengths'=>{
                                   'national'=>'8,9'
                                 },
              'nationalNumberPattern'=>'(?:8[7-9]\\d|9(?:8\\d|99))\\d{6}|4(?:3[0789]|8\\d)\\d{5}'
            }
}
;
}

1;
