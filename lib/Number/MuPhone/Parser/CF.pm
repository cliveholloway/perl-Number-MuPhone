package Number::MuPhone::Parser::CF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'8776\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'87761234'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000028/en'
                },
  'CountryCode'=>'CF',
  'TerritoryName'=>'Central African Republic',
  'fixedLine'=>{
                 'exampleNumber'=>'21612345',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2[12]\\d{6}'
               },
  'countryCode'=>'236',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'7[0257]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'70012345'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[278]\\d{7}'
                 }
}
;
}

1;
