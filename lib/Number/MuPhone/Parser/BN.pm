package Number::MuPhone::Parser::BN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:[013-9]\\d|2[0-7])\\d{4}|[3-5]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'2345678'
               },
  'countryCode'=>'673',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2-578]\\d{2})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'22[89]\\d{4}|[78]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'7123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-578]\\d{6}'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200001F/en'
                },
  'CountryCode'=>'BN',
  'TerritoryName'=>'Brunei Darussalam'
}
;
}

1;
