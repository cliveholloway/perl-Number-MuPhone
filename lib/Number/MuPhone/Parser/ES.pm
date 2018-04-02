package Number::MuPhone::Parser::ES;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'personalNumber'=>{
                      'nationalNumberPattern'=>'70\\d{7}',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'exampleNumber'=>'701234567'
                    },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'80[367]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'803123456'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'[89]00\\d{6}'
              },
  'sharedCost'=>{
                  'exampleNumber'=>'901123456',
                  'nationalNumberPattern'=>'90[12]\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     }
                },
  'TerritoryName'=>'Spain',
  'CountryCode'=>'ES',
  'references'=>{
                  'sourceUrl'=>'
          http://www.minetur.gob.es/telecomunicaciones/es-ES/Servicios/Numeracion/Documents/14-10_Descripcion_PNN.pdf
        '
                },
  'countryCode'=>'34',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'8(?:[1356]\\d|[28][0-8]|[47][1-9])\\d{6}|9(?:[135]\\d{7}|[28][0-8]\\d{6}|4[1-9]\\d{6}|6(?:[0-8]\\d{6}|9(?:0(?:[0-57-9]\\d{4}|6(?:0[0-8]|1[1-9]|[2-9]\\d)\\d{2})|[1-9]\\d{5}))|7(?:[124-9]\\d{2}|3(?:[0-8]\\d|9[1-9]))\\d{4})',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'810123456'
               },
  'mobileNumberPortableRegion'=>'true',
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'51\\d{7}',
           'exampleNumber'=>'511234567'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5-9]\\d{8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:6\\d{6}|7[1-48]\\d{5}|9(?:6906(?:09|10)|7390\\d{2}))\\d{2}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'612345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([89]00)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[89]00'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'([5-9]\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[568]|[79][0-8]'
                                              }
                                            ]
                        }
}
;
}

1;
