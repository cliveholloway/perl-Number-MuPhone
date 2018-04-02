package Number::MuPhone::Parser::AF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000001/en'
                },
  'CountryCode'=>'AF',
  'TerritoryName'=>'Afghanistan',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:[014-9]\\d|2[89]|30)\\d{6}',
              'exampleNumber'=>'701234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-7]\\d)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[2-7]',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-7]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'93',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'234567890',
                 'nationalNumberPattern'=>'(?:[25][0-8]|[34][0-4]|6[0-5])[2-9]\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'9'
                                    }
               }
}
;
}

1;
