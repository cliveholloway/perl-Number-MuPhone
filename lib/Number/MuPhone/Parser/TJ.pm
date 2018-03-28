package Number::MuPhone::Parser::TJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'8',
  'fixedLine'=>{
                 'exampleNumber'=>'372123456',
                 'possibleLengths'=>{
                                      'localOnly'=>'3,5,7',
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'(?:3(?:1[3-5]|2[245]|3[12]|4[24-7]|5[25]|72)|4(?:46|74|87))\\d{6}'
               },
  'countryCode'=>'992',
  'internationalPrefix'=>'810',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000CA/en'
                },
  'nationalPrefixFormattingRule'=>'$FG',
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'exampleNumber'=>'917123456',
              'nationalNumberPattern'=>'(?:41[18]|(?:5[05]|77|88|9[0-35-9])\\d)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3-57-9]\\d{8}'
                 },
  'TerritoryName'=>'Tajikistan',
  'CountryCode'=>'TJ',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[34]7|91[78]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([349]\\d{2})(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'4[148]|[578]|9(?:1[59]|[0235-9])',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([457-9]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'331700',
                                                'pattern'=>'(331700)(\\d)(\\d{2})'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d)(\\d{4})',
                                                'leadingDigits'=>'3(?:[1245]|3(?:[02-9]|1[0-589]))',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'preferredInternationalPrefix'=>'8~10'
}
;
}

1;
