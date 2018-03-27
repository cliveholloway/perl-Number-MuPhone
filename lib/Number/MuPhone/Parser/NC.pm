package Number::MuPhone::Parser::NC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'687',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000098/en',
                                 'http://www.opt.nc'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:5[0-4]|[79]\\d|8[0-79])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'exampleNumber'=>'751234'
            },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      },
                   'nationalNumberPattern'=>'36\\d{4}',
                   'exampleNumber'=>'366711'
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57-9]\\d{5}'
                 },
  'TerritoryName'=>'New Caledonia (Territoire français d\'outre-mer)',
  'CountryCode'=>'NC',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1.$2.$3',
                                                'leadingDigits'=>'[2-46-9]|5[0-4]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2[03-9]|3[0-5]|4[1-7]|88)\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'exampleNumber'=>'201234'
               }
}
;
}

1;
