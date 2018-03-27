package Number::MuPhone::Parser::LB;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'premiumRate'=>{
                   'exampleNumber'=>'90123456',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'9[01]\\d{6}'
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[13-9]\\d{6,7}'
                 },
  'TerritoryName'=>'Lebanon',
  'CountryCode'=>'LB',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[13-6]|7(?:[2-57]|62|8[0-7]|9[04-9])|8[02-9]|9',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'([7-9]\\d)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[89][01]|7(?:[01]|6[013-9]|8[89]|9[1-3])'
                                              }
                                            ]
                        },
  'countryCode'=>'961',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7,8'
                                 },
              'nationalNumberPattern'=>'(?:3\\d|7(?:[01]\\d|6[013-9]|8[89]|9[1-3])|81\\d)\\d{5}',
              'exampleNumber'=>'71123456'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000077/en',
                                 'http://en.wikipedia.org/wiki/%2B961'
                               ]
                },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:[14-6]\\d{2}|7(?:[2-57]\\d|62|8[0-7]|9[04-9])|8[02-9]\\d|9\\d{2})\\d{4}',
                 'exampleNumber'=>'1123456'
               },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'80\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'80123456'
                },
  'nationalPrefix'=>'0'
}
;
}

1;
