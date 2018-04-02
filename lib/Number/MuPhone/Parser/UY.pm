package Number::MuPhone::Parser::UY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'0(?:1[3-9]\\d|0)',
  'tollFree'=>{
                'nationalNumberPattern'=>'80[05]\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8001234'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'9001234',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'nationalNumberPattern'=>'90[0-8]\\d{4}'
                 },
  'TerritoryName'=>'Uruguay',
  'CountryCode'=>'UY',
  'preferredInternationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000E0/en',
                                 'http://www.ursec.gub.uy',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Uruguay'
                               ]
                },
  'nationalPrefix'=>'0',
  'countryCode'=>'598',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2\\d{7}|4[2-7]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21231234'
               },
  'preferredExtnPrefix'=>' int. ',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2489]\\d{6,7}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'9[1-9]\\d{6}',
              'exampleNumber'=>'94231234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[24]',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'9[1-9]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'[89]0',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        }
}
;
}

1;
