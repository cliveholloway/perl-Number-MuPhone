package Number::MuPhone::Parser::SV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200003F/en',
                                 'http://www.siget.gob.sv/BusquedaPublica.aspx?pagina=3&tipo=27&titulo=t8&sector=2&ordenar=&dir=DESC'
                               ]
                },
  'CountryCode'=>'SV',
  'TerritoryName'=>'El Salvador',
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'8001234',
                'nationalNumberPattern'=>'800\\d{4}(?:\\d{4})?',
                'possibleLengths'=>{
                                     'national'=>'7,11'
                                   }
              },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'7,11'
                                      },
                   'nationalNumberPattern'=>'900\\d{4}(?:\\d{4})?',
                   'exampleNumber'=>'9001234'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'[267]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[89]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[89]',
                                                'pattern'=>'(\\d{3})(\\d{4})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'70123456',
              'nationalNumberPattern'=>'[67]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[267]\\d{7}|[89]\\d{6}(?:\\d{4})?'
                 },
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[1-6]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21234567'
               },
  'countryCode'=>'503'
}
;
}

1;
