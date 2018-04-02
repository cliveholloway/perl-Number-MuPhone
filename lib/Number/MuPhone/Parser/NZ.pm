package Number::MuPhone::Parser::NZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{6,7}',
                   'possibleLengths'=>{
                                        'national'=>'8,9'
                                      },
                   'exampleNumber'=>'900123456'
                 },
  'internationalPrefix'=>'0(?:0|161)',
  'preferredInternationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000099/en'
                },
  'TerritoryName'=>'New Zealand',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'32345678',
                 'nationalNumberPattern'=>'(?:3[2-79]|[49][2-9]|6[235-9]|7[2-57-9])\\d{6}|24099\\d{3}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    }
               },
  'personalNumber'=>{
                      'exampleNumber'=>'701234567',
                      'nationalNumberPattern'=>'70\\d{7}',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         }
                    },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'[8-10]'
                                   },
                'nationalNumberPattern'=>'508\\d{6,7}|80\\d{6,8}',
                'exampleNumber'=>'800123456'
              },
  'CountryCode'=>'NZ',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'64',
  'pager'=>{
             'possibleLengths'=>{
                                  'national'=>'8,9'
                                },
             'nationalNumberPattern'=>'[28]6\\d{6,7}',
             'exampleNumber'=>'26123456'
           },
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'2(?:[028]\\d{7,8}|1(?:[03]\\d{5,7}|[12457]\\d{5,6}|[689]\\d{5})|[79]\\d{7})',
              'possibleLengths'=>{
                                   'national'=>'[8-10]'
                                 },
              'exampleNumber'=>'211234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'240|[346]|7[2-57-9]|9[1-9]',
                                                'format'=>'$1-$2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'21',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,5})',
                                                'leadingDigits'=>'2(?:1[1-9]|[69]|7[0-35-9])|70|86'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(2\\d)(\\d{3,4})(\\d{4})',
                                                'leadingDigits'=>'2[028]'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'90',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'2(?:10|74)|5|[89]0',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'6[235-9]\\d{6}|[2-57-9]\\d{7,9}'
                 }
}
;
}

1;
