package Number::MuPhone::Parser::LU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'[2-5]|7[1-9]|[89](?:[1-9]|0[2-9])',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2-5]|7[1-9]|[89](?:[1-9]|0[2-9])',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'20'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{1,2})',
                                                'leadingDigits'=>'2(?:[0367]|4[3-8])'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'20'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})(\\d{1,2})',
                                                'leadingDigits'=>'2(?:[0367]|4[3-8])',
                                                'format'=>'$1 $2 $3 $4 $5'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{1,4})',
                                                'leadingDigits'=>'2(?:[12589]|4[12])|[3-5]|7[1-9]|8(?:[1-9]|0[2-9])|9(?:[1-9]|0[2-46-9])'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'70|80[01]|90[015]'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'6',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'6[25-79][18]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'628123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24-9]\\d{3,10}|3(?:[0-46-9]\\d{2,9}|5[013-9]\\d{1,8})'
                 },
  'voip'=>{
            'exampleNumber'=>'20201234',
            'possibleLengths'=>{
                                 'national'=>'[4-10]'
                               },
            'nationalNumberPattern'=>'20(?:1\\d{5}|[2-689]\\d{1,7})'
          },
  'carrierCodeFormattingRule'=>'$CC $FG',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'352',
  'CountryCode'=>'LU',
  'nationalPrefixForParsing'=>'(15(?:0[06]|1[12]|35|4[04]|55|6[26]|77|88|99)\\d)',
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'801\\d{5}',
                  'exampleNumber'=>'80112345'
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'800\\d{5}',
                'exampleNumber'=>'80012345'
              },
  'personalNumber'=>{
                      'exampleNumber'=>'70123456',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'70\\d{6}'
                    },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'[4-11]'
                                    },
                 'nationalNumberPattern'=>'(?:2[2-9]\\d{2,9}|(?:[3457]\\d{2}|8(?:0[2-9]|[13-9]\\d)|9(?:0[89]|[2-579]\\d))\\d{1,8})',
                 'exampleNumber'=>'27123456'
               },
  'references'=>{
                  'sourceUrl'=>'http://www.ilr.public.lu/communications_electroniques/numerotation/index.html'
                },
  'TerritoryName'=>'Luxembourg',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90[015]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'90012345'
                 },
  'internationalPrefix'=>'00'
}
;
}

1;
