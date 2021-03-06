package Number::MuPhone::Parser::BO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixForParsing'=>'0(1\\d)?',
  'CountryCode'=>'BO',
  'TerritoryName'=>'Bolivia',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200001A/en',
                                 'http://www.bolivia.com/Servicios/Plandenumeracion.pdf'
                               ]
                },
  'internationalPrefix'=>'00(1\\d)?',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23467]\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'71234567',
              'nationalNumberPattern'=>'[67]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[234]',
                                                'pattern'=>'([234])(\\d{7})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[67]',
                                                'pattern'=>'([67]\\d{7})',
                                                'format'=>'$1'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'countryCode'=>'591',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:2\\d{2}|5(?:11|[258]\\d|9[67])|6(?:12|2\\d|9[34])|8(?:2[34]|39|62))|3(?:3\\d{2}|4(?:6\\d|8[24])|8(?:25|42|5[257]|86|9[25])|9(?:2\\d|3[234]|4[248]|5[24]|6[2-6]|7\\d))|4(?:4\\d{2}|6(?:11|[24689]\\d|72)))\\d{4}',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'22123456'
               },
  'carrierCodeFormattingRule'=>'$NP$CC $FG'
}
;
}

1;
