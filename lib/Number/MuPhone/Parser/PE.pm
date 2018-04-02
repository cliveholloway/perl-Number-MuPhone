package Number::MuPhone::Parser::PE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Peru',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000A6/en',
                                 'http://en.wikipedia.org/wiki/+51',
                                 'http://www.assistbook.com/South%20America/Peru/widecodes'
                               ]
                },
  'internationalPrefix'=>'19(?:1[124]|77|90)00',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'805\\d{5}',
                   'exampleNumber'=>'80512345'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'11234567',
                 'nationalNumberPattern'=>'(?:1\\d|4[1-4]|5[1-46]|6[1-7]|7[2-46]|8[2-4])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'6,7'
                                    }
               },
  'CountryCode'=>'PE',
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'80[24]\\d{5}',
                      'exampleNumber'=>'80212345'
                    },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'sharedCost'=>{
                  'exampleNumber'=>'80112345',
                  'nationalNumberPattern'=>'801\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'preferredExtnPrefix'=>' Anexo ',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[14-9]\\d{7,8}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9\\d{8}',
              'exampleNumber'=>'912345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1',
                                                'pattern'=>'(1)(\\d{7})'
                                              },
                                              {
                                                'leadingDigits'=>'[4-7]|8[2-4]',
                                                'pattern'=>'([4-8]\\d)(\\d{6})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'80',
                                                'pattern'=>'(\\d{3})(\\d{5})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(9\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'9'
                                              }
                                            ]
                        },
  'countryCode'=>'51',
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'($NP$FG)'
}
;
}

1;
