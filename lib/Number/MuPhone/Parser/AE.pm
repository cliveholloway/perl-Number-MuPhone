package Number::MuPhone::Parser::AE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'971',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'[2-4679][2-8]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22345678'
               },
  'mobile'=>{
              'exampleNumber'=>'501234567',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'5[024-68]\\d{7}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-4679])(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[2-4679][2-8]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'5',
                                                'pattern'=>'(5\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'([479]00)(\\d)(\\d{5})',
                                                'leadingDigits'=>'[479]0'
                                              },
                                              {
                                                'pattern'=>'([68]00)(\\d{2,9})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'60|8',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'uan'=>{
           'nationalNumberPattern'=>'600[25]\\d{5}',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'exampleNumber'=>'600212345'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-79]\\d{7,8}|800\\d{2,9}'
                 },
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'700[05]\\d{5}',
                  'exampleNumber'=>'700012345'
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'400\\d{6}|800\\d{2,9}',
                'possibleLengths'=>{
                                     'national'=>'[5-12]'
                                   },
                'exampleNumber'=>'800123456'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'900234567',
                   'nationalNumberPattern'=>'900[02]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000DC/en'
                },
  'CountryCode'=>'AE',
  'TerritoryName'=>'United Arab Emirates'
}
;
}

1;
