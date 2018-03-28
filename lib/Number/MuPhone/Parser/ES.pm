package Number::MuPhone::Parser::ES;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'8(?:[1356]\\d|[28][0-8]|[47][1-9])\\d{6}|9(?:[135]\\d{7}|[28][0-8]\\d{6}|4[1-9]\\d{6}|6(?:[0-8]\\d{6}|9(?:0(?:[0-57-9]\\d{4}|6(?:0[0-8]|1[1-9]|[2-9]\\d)\\d{2})|[1-9]\\d{5}))|7(?:[124-9]\\d{2}|3(?:[0-8]\\d|9[1-9]))\\d{4})',
                 'exampleNumber'=>'810123456'
               },
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'90[12]\\d{6}',
                  'exampleNumber'=>'901123456'
                },
  'uan'=>{
           'exampleNumber'=>'511234567',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'51\\d{7}'
         },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'[89]00\\d{6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5-9]\\d{8}'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'701234567',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'70\\d{7}'
                    },
  'premiumRate'=>{
                   'exampleNumber'=>'803123456',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'80[367]\\d{6}'
                 },
  'TerritoryName'=>'Spain',
  'CountryCode'=>'ES',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[89]00',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([89]00)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'([5-9]\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[568]|[79][0-8]'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'34',
  'mobileNumberPortableRegion'=>'true',
  'references'=>{
                  'sourceUrl'=>'
          http://www.minetur.gob.es/telecomunicaciones/es-ES/Servicios/Numeracion/Documents/14-10_Descripcion_PNN.pdf
        '
                },
  'mobile'=>{
              'exampleNumber'=>'612345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:6\\d{6}|7[1-48]\\d{5}|9(?:6906(?:09|10)|7390\\d{2}))\\d{2}'
            }
}
;
}

1;
