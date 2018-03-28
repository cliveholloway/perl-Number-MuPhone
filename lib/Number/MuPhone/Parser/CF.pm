package Number::MuPhone::Parser::CF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'21612345',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2[12]\\d{6}'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'236',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000028/en'
                },
  'mobile'=>{
              'exampleNumber'=>'70012345',
              'nationalNumberPattern'=>'7[0257]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[278]\\d{7}'
                 },
  'premiumRate'=>{
                   'exampleNumber'=>'87761234',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'8776\\d{4}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'CF',
  'TerritoryName'=>'Central African Republic'
}
;
}

1;
