package Number::MuPhone::Parser::AF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-7]\\d{8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2-7]',
                                                'pattern'=>'([2-7]\\d)(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'CountryCode'=>'AF',
  'TerritoryName'=>'Afghanistan',
  'countryCode'=>'93',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000001/en'
                },
  'mobile'=>{
              'exampleNumber'=>'701234567',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:[014-9]\\d|2[89]|30)\\d{6}'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:[25][0-8]|[34][0-4]|6[0-5])[2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'234567890'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
