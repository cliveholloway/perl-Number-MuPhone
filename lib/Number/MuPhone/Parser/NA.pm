package Number::MuPhone::Parser::NA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'61221234',
                 'nationalNumberPattern'=>'6(?:1(?:17|2(?:[0189]\\d|[2-6]|7\\d?)|3(?:[01378]|2\\d)|4(?:[024]|10?|3[15]?)|69|7[014])|2(?:17|5(?:[0-36-8]|4\\d?)|69|70)|3(?:17|2(?:[0237]\\d?|[14-689])|34|6[289]|7[01]|81)|4(?:17|2(?:[012]|7\\d?)|4(?:[06]|1\\d?)|5(?:[01357]|[25]\\d?)|69|7[01])|5(?:17|2(?:[0459]|[23678]\\d?)|69|7[01])|6(?:17|2(?:5|6\\d?)|38|42|69|7[01])|7(?:17|2(?:[569]|[234]\\d?)|3(?:0\\d?|[13])|6[89]|7[01]))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    }
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'264',
  'mobile'=>{
              'exampleNumber'=>'811234567',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:60|8[125])\\d{7}'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000093/en'
                },
  'voip'=>{
            'exampleNumber'=>'88612345',
            'nationalNumberPattern'=>'8(?:3\\d{2}|86)\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'8,9'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[68]\\d{7,8}'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'870123456',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'8701\\d{5}'
                 },
  'TerritoryName'=>'Namibia',
  'CountryCode'=>'NA',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(8\\d)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8[1235]'
                                              },
                                              {
                                                'pattern'=>'(6\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'6',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'88',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(88)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'870',
                                                'pattern'=>'(870)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        }
}
;
}

1;
