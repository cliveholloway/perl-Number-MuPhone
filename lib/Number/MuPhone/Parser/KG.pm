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
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235-8]\\d{8,9}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[25-7]|31[25]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d{5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'3(?:1[36]|[2-9])'
                                              },
                                              {
                                                'leadingDigits'=>'8',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d)(\\d{3})'
                                              }
                                            ]
                        },
  'CountryCode'=>'KG',
  'TerritoryName'=>'Kyrgyzstan',
  'internationalPrefix'=>'00',
  'countryCode'=>'996',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000074/en'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:20[0-35]|5[124-7]\\d|7[07]\\d)\\d{6}',
              'exampleNumber'=>'700123456'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'312123456',
                 'nationalNumberPattern'=>'(?:3(?:1(?:[256]\\d|3[1-9]|47)|2(?:22|3[0-479]|6[0-7])|4(?:22|5[6-9]|6\\d)|5(?:22|3[4-7]|59|6\\d)|6(?:22|5[35-7]|6\\d)|7(?:22|3[468]|4[1-9]|59|[67]\\d)|9(?:22|4[1-8]|6\\d))|6(?:09|12|2[2-4])\\d)\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'9'
                                    }
               },
  'nationalPrefix'=>'0'
}
;
}

1;
