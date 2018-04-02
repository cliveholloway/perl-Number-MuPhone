package Number::MuPhone::Parser::PM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[45]\\d{5}'
                 },
  'mobile'=>{
              'exampleNumber'=>'551234',
              'nationalNumberPattern'=>'(?:40|55)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([45]\\d)(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'countryCode'=>'508',
  'fixedLine'=>{
                 'exampleNumber'=>'411234',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'nationalNumberPattern'=>'41\\d{4}'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'TerritoryName'=>'Saint Pierre and Miquelon (Collectivité territoriale de la République française)',
  'CountryCode'=>'PM',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000B2/en'
                },
  'internationalPrefix'=>'00'
}
;
}

1;
