package Number::MuPhone::Parser::PF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'40412345',
                 'possibleLengths'=>{
                                      'national'=>'6,8'
                                    },
                 'nationalNumberPattern'=>'4(?:[09][45689]\\d|4)\\d{4}'
               },
  'countryCode'=>'689',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'4[09]|8[79]',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'44',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'8[79]\\d{6}',
              'exampleNumber'=>'87123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'4\\d{5,7}|8\\d{7}'
                 },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'44\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'6'
                                                  },
                               'exampleNumber'=>'441234'
                             },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200004D/en'
                },
  'CountryCode'=>'PF',
  'TerritoryName'=>'French Polynesia (Tahiti) (Territoire français d\'outre-mer)'
}
;
}

1;
