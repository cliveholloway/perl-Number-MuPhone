package Number::MuPhone::Parser::HR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'385',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'9(?:01\\d|[1259]\\d{2}|7(?:[0679]\\d|51)|8\\d{1,2})\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8,9'
                                 },
              'exampleNumber'=>'921234567'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000032/en',
                                 'http://en.wikipedia.org/wiki/%2B385'
                               ]
                },
  'personalNumber'=>{
                      'exampleNumber'=>'74123456',
                      'nationalNumberPattern'=>'7[45]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         }
                    },
  'premiumRate'=>{
                   'exampleNumber'=>'611234',
                   'possibleLengths'=>{
                                        'national'=>'[6-8]'
                                      },
                   'nationalNumberPattern'=>'6(?:[01]\\d{0,2}|[459]\\d{2})\\d{4}'
                 },
  'CountryCode'=>'HR',
  'TerritoryName'=>'Croatia',
  'uan'=>{
           'exampleNumber'=>'62123456',
           'possibleLengths'=>{
                                'national'=>'8,9'
                              },
           'nationalNumberPattern'=>'(?:62\\d?|72)\\d{6}'
         },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'[7-9]'
                                   },
                'nationalNumberPattern'=>'80[01]\\d{4,6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{5,8}|[89]\\d{6,8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'1',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(1)(\\d{4})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'([2-5]\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[2-5]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(9\\d)(\\d{3})(\\d{3,4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'9'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'6[01]',
                                                'pattern'=>'(6[01])(\\d{2})(\\d{2,3})'
                                              },
                                              {
                                                'pattern'=>'([67]\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[67]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(80[01])(\\d{2})(\\d{2,3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(80[01])(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'1\\d{7}|(?:2[0-3]|3[1-5]|4[02-47-9]|5[1-3])\\d{6,7}',
                 'possibleLengths'=>{
                                      'national'=>'8,9',
                                      'localOnly'=>'6,7'
                                    },
                 'exampleNumber'=>'12345678'
               }
}
;
}

1;
