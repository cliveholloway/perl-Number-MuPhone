package Number::MuPhone::Parser::CO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'[124-8][2-9]\\d{6}',
                 'exampleNumber'=>'12345678'
               },
  'countryCode'=>'57',
  'nationalPrefix'=>'0',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[13]\\d{0,3}|[24-8])\\d{7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1(?:8[2-9]|9(?:09|[1-3])|[2-7])|[24-8]',
                                                'carrierCodeFormattingRule'=>'$NP$CC $FG',
                                                'pattern'=>'(\\d)(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'($FG)'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'3',
                                                'carrierCodeFormattingRule'=>'$NP$CC $FG',
                                                'pattern'=>'(\\d{3})(\\d{7})'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3',
                                                'format'=>'$1-$2-$3',
                                                'leadingDigits'=>'1(?:800|9(?:0[01]|4[78]))',
                                                'pattern'=>'(1)(\\d{3})(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'3211234567',
              'nationalNumberPattern'=>'3(?:0[0-5]|1\\d|2[0-3]|5[01])\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 }
            },
  'internationalPrefix'=>'00(?:4(?:[14]4|56)|[579])',
  'tollFree'=>{
                'exampleNumber'=>'18001234567',
                'possibleLengths'=>{
                                     'national'=>'11'
                                   },
                'nationalNumberPattern'=>'1800\\d{7}'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'19001234567',
                   'possibleLengths'=>{
                                        'national'=>'11'
                                      },
                   'nationalNumberPattern'=>'19(?:0[01]|4[78])\\d{7}'
                 },
  'nationalPrefixForParsing'=>'0([3579]|4(?:44|56))?',
  'CountryCode'=>'CO',
  'TerritoryName'=>'Colombia',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200002C/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Colombia'
                               ]
                }
}
;
}

1;
