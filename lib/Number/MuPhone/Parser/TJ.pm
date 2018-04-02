package Number::MuPhone::Parser::TJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3-57-9]\\d{8}'
                 },
  'mobile'=>{
              'exampleNumber'=>'917123456',
              'nationalNumberPattern'=>'(?:41[18]|(?:5[05]|77|88|9[0-35-9])\\d)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[34]7|91[78]',
                                                'pattern'=>'([349]\\d{2})(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'4[148]|[578]|9(?:1[59]|[0235-9])',
                                                'pattern'=>'([457-9]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(331700)(\\d)(\\d{2})',
                                                'leadingDigits'=>'331700'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'3(?:[1245]|3(?:[02-9]|1[0-589]))',
                                                'pattern'=>'(\\d{4})(\\d)(\\d{4})'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'8',
  'countryCode'=>'992',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'3,5,7'
                                    },
                 'nationalNumberPattern'=>'(?:3(?:1[3-5]|2[245]|3[12]|4[24-7]|5[25]|72)|4(?:46|74|87))\\d{6}',
                 'exampleNumber'=>'372123456'
               },
  'nationalPrefixFormattingRule'=>'$FG',
  'TerritoryName'=>'Tajikistan',
  'CountryCode'=>'TJ',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000CA/en'
                },
  'preferredInternationalPrefix'=>'8~10',
  'internationalPrefix'=>'810'
}
;
}

1;
