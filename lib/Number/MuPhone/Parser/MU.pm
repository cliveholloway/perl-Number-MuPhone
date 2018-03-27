package Number::MuPhone::Parser::MU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'0(?:0|[2-7]0|33)',
  'countryCode'=>'230',
  'mobile'=>{
              'exampleNumber'=>'52512345',
              'nationalNumberPattern'=>'5(?:2[59]\\d|4(?:2[1-389]|4\\d|7[1-9]|9\\d)|7\\d{2}|8(?:[0-25689]\\d|4[3479]|7[15-8])|9[0-8]\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.icta.mu/telecommunications/numbering.htm'
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[012]\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8001234'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{6,7}'
                 },
  'voip'=>{
            'exampleNumber'=>'3201234',
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'nationalNumberPattern'=>'3(?:20|9\\d)\\d{4}'
          },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'30\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'exampleNumber'=>'3012345'
                 },
  'preferredInternationalPrefix'=>'020',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-46-9]\\d{2})(\\d{4})',
                                                'leadingDigits'=>'[2-46-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'5',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(5\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'CountryCode'=>'MU',
  'TerritoryName'=>'Mauritius',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7,8'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:[03478]\\d|1[0-7]|6[1-69])|4(?:[013568]\\d|2[4-7])|5(?:44\\d|471)|6\\d{2}|8(?:14|3[129]))\\d{4}',
                 'exampleNumber'=>'2012345'
               }
}
;
}

1;
