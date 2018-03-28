package Number::MuPhone::Parser::GU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.nationalnanpa.com/nas/public/assigned_code_query_step1.do?method=resetCodeQueryModel'
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'mobile'=>{
              'exampleNumber'=>'6713001234',
              'nationalNumberPattern'=>'671(?:3(?:00|3[39]|4[349]|55|6[26])|4(?:56|7[1-9]|8[0236-9])|5(?:55|6[2-5]|88)|6(?:3[2-578]|4[24-9]|5[34]|78|8[5-9])|7(?:[079]7|2[0167]|3[45]|47|8[789])|8(?:[2-5789]8|6[48])|9(?:2[29]|6[79]|7[179]|8[789]|9[78]))\\d{4}',
              'possibleLengths'=>{
                                   'localOnly'=>'7',
                                   'national'=>'10'
                                 }
            },
  'internationalPrefix'=>'011',
  'countryCode'=>'1',
  'CountryCode'=>'GU',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'($1) $2-$3',
                                                'leadingDigits'=>'',
                                                'intlFormat'=>'$1-$2-$3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Guam',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5689]\\d{9}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8002123456',
                'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'personalNumber'=>{
                      'exampleNumber'=>'5002345678',
                      'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         }
                    },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900[2-9]\\d{6}',
                   'exampleNumber'=>'9002123456'
                 },
  'nationalPrefix'=>'1',
  'leadingDigits'=>'671',
  'fixedLine'=>{
                 'exampleNumber'=>'6713001234',
                 'possibleLengths'=>{
                                      'national'=>'10',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'671(?:3(?:00|3[39]|4[349]|55|6[26])|4(?:56|7[1-9]|8[0236-9])|5(?:55|6[2-5]|88)|6(?:3[2-578]|4[24-9]|5[34]|78|8[5-9])|7(?:[079]7|2[0167]|3[45]|47|8[789])|8(?:[2-5789]8|6[48])|9(?:2[29]|6[79]|7[179]|8[789]|9[78]))\\d{4}'
               }
}
;
}

1;
