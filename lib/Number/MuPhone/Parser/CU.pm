package Number::MuPhone::Parser::CU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[1-4]\\d{5,6}|3(?:1\\d{6}|[23]\\d{4,6})|4(?:[125]\\d{5,6}|[36]\\d{6}|[78]\\d{4,6})|7\\d{6,7}',
                 'possibleLengths'=>{
                                      'localOnly'=>'4,5',
                                      'national'=>'[6-8]'
                                    },
                 'exampleNumber'=>'71234567'
               },
  'countryCode'=>'53',
  'internationalPrefix'=>'119',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000033/en'
                },
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'mobile'=>{
              'exampleNumber'=>'51234567',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'5\\d{7}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57]\\d{5,7}'
                 },
  'TerritoryName'=>'Cuba',
  'CountryCode'=>'CU',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d)(\\d{6,7})',
                                                'leadingDigits'=>'7',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[2-4]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{4,6})'
                                              },
                                              {
                                                'pattern'=>'(\\d)(\\d{7})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'5',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        }
}
;
}

1;
