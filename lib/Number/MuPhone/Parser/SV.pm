package Number::MuPhone::Parser::SV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'503',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200003F/en',
                                 'http://www.siget.gob.sv/BusquedaPublica.aspx?pagina=3&tipo=27&titulo=t8&sector=2&ordenar=&dir=DESC'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'70123456',
              'nationalNumberPattern'=>'[67]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'7,11'
                                      },
                   'nationalNumberPattern'=>'900\\d{4}(?:\\d{4})?',
                   'exampleNumber'=>'9001234'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8001234',
                'possibleLengths'=>{
                                     'national'=>'7,11'
                                   },
                'nationalNumberPattern'=>'800\\d{4}(?:\\d{4})?'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[267]\\d{7}|[89]\\d{6}(?:\\d{4})?'
                 },
  'TerritoryName'=>'El Salvador',
  'CountryCode'=>'SV',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[267]'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[89]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[89]'
                                              }
                                            ]
                        },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[1-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21234567'
               }
}
;
}

1;
