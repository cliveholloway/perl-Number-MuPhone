package Number::MuPhone::Parser::IQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'12345678',
                 'nationalNumberPattern'=>'1\\d{7}|(?:2[13-5]|3[02367]|4[023]|5[03]|6[026])\\d{6,7}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8,9'
                                    }
               },
  'countryCode'=>'964',
  'nationalPrefix'=>'0',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{7,9}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'1',
                                                'pattern'=>'(1)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([2-6]\\d)(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[2-6]'
                                              },
                                              {
                                                'pattern'=>'(7\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'7',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'7[3-9]\\d{8}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'7912345678'
            },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Iraq',
  'CountryCode'=>'IQ',
  'references'=>{
                  'sourceUrl'=>[
                                 'https://www.itu.int/oth/T0202000067/en',
                                 'http://en.wikipedia.org/wiki/%2B964',
                                 'http://wtng.info/wtng-964-ik.html'
                               ]
                }
}
;
}

1;
