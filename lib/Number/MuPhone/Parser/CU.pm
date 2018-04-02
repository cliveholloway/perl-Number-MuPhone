package Number::MuPhone::Parser::CU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57]\\d{5,7}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'7',
                                                'pattern'=>'(\\d)(\\d{6,7})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[2-4]',
                                                'pattern'=>'(\\d{2})(\\d{4,6})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d)(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'5'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'5\\d{7}',
              'exampleNumber'=>'51234567'
            },
  'fixedLine'=>{
                 'exampleNumber'=>'71234567',
                 'possibleLengths'=>{
                                      'localOnly'=>'4,5',
                                      'national'=>'[6-8]'
                                    },
                 'nationalNumberPattern'=>'2[1-4]\\d{5,6}|3(?:1\\d{6}|[23]\\d{4,6})|4(?:[125]\\d{5,6}|[36]\\d{6}|[78]\\d{4,6})|7\\d{6,7}'
               },
  'nationalPrefix'=>'0',
  'countryCode'=>'53',
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'TerritoryName'=>'Cuba',
  'CountryCode'=>'CU',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000033/en'
                },
  'internationalPrefix'=>'119'
}
;
}

1;
