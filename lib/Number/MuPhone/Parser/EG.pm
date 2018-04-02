package Number::MuPhone::Parser::EG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{4,9}|[2456]\\d{8}|3\\d{7}|[89]\\d{8,9}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'1(?:0[0-269]|1[0-245]|2[0-278])\\d{7}',
              'exampleNumber'=>'1001234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[23]',
                                                'pattern'=>'(\\d)(\\d{7,8})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1[012]|[89]00',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{6,7})',
                                                'leadingDigits'=>'1[35]|[4-6]|[89][2-9]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'countryCode'=>'20',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'5,8,9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:1(?:3[23]\\d|5(?:[23]|9\\d))|2[2-4]\\d{2}|3\\d{2}|4(?:0[2-5]|[578][23]|64)\\d|5(?:0[2-7]|[57][23])\\d|6[24-689]3\\d|8(?:2[2-57]|4[26]|6[237]|8[2-4])\\d|9(?:2[27]|3[24]|52|6[2356]|7[2-4])\\d)\\d{5}|1[69]\\d{3}',
                 'exampleNumber'=>'234567890'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'TerritoryName'=>'Egypt',
  'CountryCode'=>'EG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200003E/en'
                },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'exampleNumber'=>'9001234567'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'800\\d{7}'
              },
  'internationalPrefix'=>'00'
}
;
}

1;
