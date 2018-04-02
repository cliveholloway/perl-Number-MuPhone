package Number::MuPhone::Parser::KG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{6,7}',
                'possibleLengths'=>{
                                     'national'=>'9,10'
                                   },
                'exampleNumber'=>'800123456'
              },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000074/en'
                },
  'CountryCode'=>'KG',
  'TerritoryName'=>'Kyrgyzstan',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'996',
  'fixedLine'=>{
                 'exampleNumber'=>'312123456',
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'5,6'
                                    },
                 'nationalNumberPattern'=>'(?:3(?:1(?:[256]\\d|3[1-9]|47)|2(?:22|3[0-479]|6[0-7])|4(?:22|5[6-9]|6\\d)|5(?:22|3[4-7]|59|6\\d)|6(?:22|5[35-7]|6\\d)|7(?:22|3[468]|4[1-9]|59|[67]\\d)|9(?:22|4[1-8]|6\\d))|6(?:09|12|2[2-4])\\d)\\d{5}'
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:20[0-35]|5[124-7]\\d|7[07]\\d)\\d{6}',
              'exampleNumber'=>'700123456'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[25-7]|31[25]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'3(?:1[36]|[2-9])',
                                                'pattern'=>'(\\d{4})(\\d{5})'
                                              },
                                              {
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d)(\\d{3})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235-8]\\d{8,9}'
                 }
}
;
}

1;
