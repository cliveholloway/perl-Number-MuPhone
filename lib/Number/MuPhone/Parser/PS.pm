package Number::MuPhone::Parser::PS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'nationalNumberPattern'=>'1700\\d{6}',
                  'exampleNumber'=>'1700123456'
                },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:22[234789]|42[45]|82[01458]|92[369])\\d{5}',
                 'exampleNumber'=>'22234567'
               },
  'nationalPrefix'=>'0',
  'CountryCode'=>'PS',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2489])(2\\d{2})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2489]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'5',
                                                'pattern'=>'(5[69]\\d)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1[78]00)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1[78]'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Palestinian Authority',
  'tollFree'=>{
                'exampleNumber'=>'1800123456',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'1800\\d{6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24589]\\d{7,8}|1(?:[78]\\d{8}|[49]\\d{2,3})'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'19123',
                   'possibleLengths'=>{
                                        'national'=>'4,5'
                                      },
                   'nationalNumberPattern'=>'1(?:4|9\\d)\\d{2}'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B970',
                                 'http://www.wtng.info/wtng-970-ps.html',
                                 'http://www.paltel.ps'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'599123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'5[69]\\d{7}'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'internationalPrefix'=>'00',
  'countryCode'=>'970'
}
;
}

1;
