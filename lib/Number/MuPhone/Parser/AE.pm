package Number::MuPhone::Parser::AE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'uan'=>{
           'exampleNumber'=>'600212345',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'600[25]\\d{5}'
         },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'700[05]\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'exampleNumber'=>'700012345'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'22345678',
                 'nationalNumberPattern'=>'[2-4679][2-8]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'7'
                                    }
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000DC/en'
                },
  'mobile'=>{
              'exampleNumber'=>'501234567',
              'nationalNumberPattern'=>'5[024-68]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'countryCode'=>'971',
  'internationalPrefix'=>'00',
  'CountryCode'=>'AE',
  'TerritoryName'=>'United Arab Emirates',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-4679])(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2-4679][2-8]'
                                              },
                                              {
                                                'pattern'=>'(5\\d)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'5'
                                              },
                                              {
                                                'leadingDigits'=>'[479]0',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'([479]00)(\\d)(\\d{5})'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'([68]00)(\\d{2,9})',
                                                'leadingDigits'=>'60|8',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'premiumRate'=>{
                   'exampleNumber'=>'900234567',
                   'nationalNumberPattern'=>'900[02]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'400\\d{6}|800\\d{2,9}',
                'possibleLengths'=>{
                                     'national'=>'[5-12]'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-79]\\d{7,8}|800\\d{2,9}'
                 }
}
;
}

1;
