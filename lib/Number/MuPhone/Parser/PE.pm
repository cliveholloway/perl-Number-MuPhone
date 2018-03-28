package Number::MuPhone::Parser::PE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1',
                                                'pattern'=>'(1)(\\d{7})'
                                              },
                                              {
                                                'leadingDigits'=>'[4-7]|8[2-4]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'([4-8]\\d)(\\d{6})'
                                              },
                                              {
                                                'leadingDigits'=>'80',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{5})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'9',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(9\\d{2})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[14-9]\\d{7,8}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}',
                'exampleNumber'=>'80012345'
              },
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'fixedLine'=>{
                 'exampleNumber'=>'11234567',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'6,7'
                                    },
                 'nationalNumberPattern'=>'(?:1\\d|4[1-4]|5[1-46]|6[1-7]|7[2-46]|8[2-4])\\d{6}'
               },
  'nationalPrefix'=>'0',
  'CountryCode'=>'PE',
  'TerritoryName'=>'Peru',
  'personalNumber'=>{
                      'nationalNumberPattern'=>'80[24]\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'exampleNumber'=>'80212345'
                    },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'805\\d{5}',
                   'exampleNumber'=>'80512345'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000A6/en',
                                 'http://en.wikipedia.org/wiki/+51',
                                 'http://www.assistbook.com/South%20America/Peru/widecodes'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9\\d{8}',
              'exampleNumber'=>'912345678'
            },
  'internationalPrefix'=>'19(?:1[124]|77|90)00',
  'countryCode'=>'51',
  'mobileNumberPortableRegion'=>'true',
  'sharedCost'=>{
                  'exampleNumber'=>'80112345',
                  'nationalNumberPattern'=>'801\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'preferredExtnPrefix'=>' Anexo '
}
;
}

1;
