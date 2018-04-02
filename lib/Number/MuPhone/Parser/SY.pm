package Number::MuPhone::Parser::SY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Syrian Arab Republic',
  'CountryCode'=>'SY',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000C9/en',
                                 'http://en.wikipedia.org/wiki/%2B963'
                               ]
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'internationalPrefix'=>'00',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-59]\\d{7,8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'9(?:22|[3-589]\\d|6[024-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'944567890'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[1-5]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(9\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'9'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'countryCode'=>'963',
  'fixedLine'=>{
                 'exampleNumber'=>'112345678',
                 'nationalNumberPattern'=>'(?:1(?:1\\d?|4\\d|[2356])|2(?:1\\d?|[235])|3(?:[13]\\d|4)|4[13]|5[1-3])\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8,9'
                                    }
               },
  'nationalPrefixFormattingRule'=>'$NP$FG'
}
;
}

1;
