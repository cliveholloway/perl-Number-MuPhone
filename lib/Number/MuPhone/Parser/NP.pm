package Number::MuPhone::Parser::NP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000095/en',
                                 'http://www.ntc.net.np/mobile/mob_postpaid_number_scheme.php',
                                 'http://www.nta.gov.np/en/2012-06-01-11-45-17/2012-06-04-04-26-59/numbering-plan'
                               ]
                },
  'CountryCode'=>'NP',
  'TerritoryName'=>'Nepal',
  'internationalPrefix'=>'00',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(1)(\\d{7})',
                                                'leadingDigits'=>'1[2-6]',
                                                'format'=>'$1-$2'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'leadingDigits'=>'1[01]|[2-8]|9(?:[1-69]|7[15-9])',
                                                'format'=>'$1-$2'
                                              },
                                              {
                                                'leadingDigits'=>'9(?:6[013]|7[245]|8)',
                                                'pattern'=>'(9\\d{2})(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'9841234567',
              'nationalNumberPattern'=>'9(?:6[013]|7[245]|8[0-24-6])\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-8]\\d{7}|9(?:[1-69]\\d{6,8}|7[2-6]\\d{5,7}|8\\d{8})'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'14567890',
                 'nationalNumberPattern'=>'(?:1[0-6]\\d|2[13-79][2-6]|3[135-8][2-6]|4[146-9][2-6]|5[135-7][2-6]|6[13-9][2-6]|7[15-9][2-6]|8[1-46-9][2-6]|9[1-79][2-6])\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8'
                                    }
               },
  'countryCode'=>'977',
  'nationalPrefix'=>'0'
}
;
}

1;
