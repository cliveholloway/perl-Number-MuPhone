package Number::MuPhone::Parser::MN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'50123456',
                 'possibleLengths'=>{
                                      'national'=>'[8-10]',
                                      'localOnly'=>'6,7'
                                    },
                 'nationalNumberPattern'=>'[12](?:1\\d|2(?:[1-3]\\d?|7\\d)|3[2-8]\\d{1,2}|4[2-68]\\d{1,2}|5[1-4689]\\d{1,2})\\d{5}|5[0568]\\d{6}'
               },
  'nationalPrefix'=>'0',
  'voip'=>{
            'exampleNumber'=>'75123456',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'7[05-8]\\d{6}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[12]\\d{7,9}|[57-9]\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[12]1',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([12]\\d)(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'([12]2\\d)(\\d{5,6})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[12]2[1-3]'
                                              },
                                              {
                                                'pattern'=>'([12]\\d{3})(\\d{5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[12](?:27|[3-5]\\d)2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[57-9]',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              },
                                              {
                                                'pattern'=>'([12]\\d{4})(\\d{4,5})',
                                                'leadingDigits'=>'[12](?:27|[3-5]\\d)[4-9]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'CountryCode'=>'MN',
  'TerritoryName'=>'Mongolia',
  'countryCode'=>'976',
  'internationalPrefix'=>'001',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200008E/en'
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'exampleNumber'=>'88123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:8(?:[05689]\\d|3[01])|9[013-9]\\d)\\d{5}'
            }
}
;
}

1;
