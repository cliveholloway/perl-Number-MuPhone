package Number::MuPhone::Parser::BN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2345678',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'2(?:[013-9]\\d|2[0-7])\\d{4}|[3-5]\\d{6}'
               },
  'internationalPrefix'=>'00',
  'countryCode'=>'673',
  'mobile'=>{
              'nationalNumberPattern'=>'22[89]\\d{4}|[78]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'7123456'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200001F/en'
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-578]\\d{6}'
                 },
  'TerritoryName'=>'Brunei Darussalam',
  'CountryCode'=>'BN',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'',
                                                'pattern'=>'([2-578]\\d{2})(\\d{4})'
                                              }
                                            ]
                        }
}
;
}

1;
