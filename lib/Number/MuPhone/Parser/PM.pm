package Number::MuPhone::Parser::PM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'41\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'exampleNumber'=>'411234'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B2/en'
                },
  'mobile'=>{
              'exampleNumber'=>'551234',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'nationalNumberPattern'=>'(?:40|55)\\d{4}'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'508',
  'CountryCode'=>'PM',
  'TerritoryName'=>'Saint Pierre and Miquelon (Collectivité territoriale de la République française)',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([45]\\d)(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[45]\\d{5}'
                 }
}
;
}

1;
