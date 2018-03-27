package Number::MuPhone::Parser::UG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'312345678',
                 'nationalNumberPattern'=>'20(?:[0147]\\d{2}|2(?:40|[5-9]\\d)|3(?:0[0-4]|[23]\\d)|5[0-4]\\d|6[035-9]\\d|8[0-2]\\d)\\d{4}|[34]\\d{8}',
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'[5-7]'
                                    }
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'exampleNumber'=>'712345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:(?:0[0-7]|[15789]\\d|30|4[0-4])\\d|2(?:[03]\\d|60))\\d{5}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000F1/en',
                                 'http://www.ucc.co.ug/licensing/ugandaNumberingPlan.pdf'
                               ]
                },
  'countryCode'=>'256',
  'internationalPrefix'=>'00[057]',
  'CountryCode'=>'UG',
  'TerritoryName'=>'Uganda',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{6})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[7-9]|20(?:[013-8]|2[5-9])|4(?:6[45]|[7-9])'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{7})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'3|4(?:[1-5]|6[0-36-9])'
                                              },
                                              {
                                                'pattern'=>'(2024)(\\d{5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2024'
                                              }
                                            ]
                        },
  'premiumRate'=>{
                   'exampleNumber'=>'901123456',
                   'nationalNumberPattern'=>'90[123]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'\\d{9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800[123]\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              }
}
;
}

1;
