package Number::MuPhone::Parser::WF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'681',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:50|68|72)\\d{4}',
                 'exampleNumber'=>'501234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[4-8]\\d{5}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'nationalNumberPattern'=>'(?:50|68|72|8[23])\\d{4}',
              'exampleNumber'=>'501234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'voicemail'=>{
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'nationalNumberPattern'=>'[48]0\\d{4}',
                 'exampleNumber'=>'401234'
               },
  'TerritoryName'=>'Wallis and Futuna (Territoire français d\'outre-mer)',
  'CountryCode'=>'WF',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000E6/en'
                }
}
;
}

1;
