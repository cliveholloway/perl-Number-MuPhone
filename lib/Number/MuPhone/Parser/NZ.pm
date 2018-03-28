package Number::MuPhone::Parser::NZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'NZ',
  'TerritoryName'=>'New Zealand',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8,9'
                                      },
                   'nationalNumberPattern'=>'90\\d{6,7}',
                   'exampleNumber'=>'900123456'
                 },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'70\\d{7}',
                      'exampleNumber'=>'701234567'
                    },
  'mobile'=>{
              'nationalNumberPattern'=>'2(?:[028]\\d{7,8}|1(?:[03]\\d{5,7}|[12457]\\d{5,6}|[689]\\d{5})|[79]\\d{7})',
              'possibleLengths'=>{
                                   'national'=>'[8-10]'
                                 },
              'exampleNumber'=>'211234567'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000099/en'
                },
  'internationalPrefix'=>'0(?:0|161)',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'64',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:3[2-79]|[49][2-9]|6[235-9]|7[2-57-9])\\d{6}|24099\\d{3}',
                 'exampleNumber'=>'32345678'
               },
  'nationalPrefix'=>'0',
  'preferredInternationalPrefix'=>'00',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'240|[346]|7[2-57-9]|9[1-9]',
                                                'format'=>'$1-$2 $3',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'21',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,5})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2(?:1[1-9]|[69]|7[0-35-9])|70|86'
                                              },
                                              {
                                                'pattern'=>'(2\\d)(\\d{3,4})(\\d{4})',
                                                'leadingDigits'=>'2[028]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'90',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2(?:10|74)|5|[89]0',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'6[235-9]\\d{6}|[2-57-9]\\d{7,9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'508\\d{6,7}|80\\d{6,8}',
                'possibleLengths'=>{
                                     'national'=>'[8-10]'
                                   }
              },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'exampleNumber'=>'26123456',
             'possibleLengths'=>{
                                  'national'=>'8,9'
                                },
             'nationalNumberPattern'=>'[28]6\\d{6,7}'
           }
}
;
}

1;
