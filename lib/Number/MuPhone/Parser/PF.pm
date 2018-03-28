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
  'mobile'=>{
              'exampleNumber'=>'87123456',
              'nationalNumberPattern'=>'8[79]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200004D/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'689',
  'CountryCode'=>'PF',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'4[09]|8[79]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'44',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'TerritoryName'=>'French Polynesia (Tahiti) (Territoire français d\'outre-mer)',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'4\\d{5,7}|8\\d{7}'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'441234',
                               'nationalNumberPattern'=>'44\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'6'
                                                  }
                             }
}
;
}

1;
