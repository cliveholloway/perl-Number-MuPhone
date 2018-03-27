package Number::MuPhone::Parser::SC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'4217123',
                 'nationalNumberPattern'=>'4[2-46]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'internationalPrefix'=>'0(?:[02]|10?)',
  'countryCode'=>'248',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000BA/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Seychelles'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'2510123',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'nationalNumberPattern'=>'2[5-8]\\d{5}'
            },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'8000\\d{3}',
                'exampleNumber'=>'8000000'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[24689]\\d{5,6}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'7'
                               },
            'nationalNumberPattern'=>'(?:64\\d|971)\\d{4}',
            'exampleNumber'=>'6412345'
          },
  'preferredInternationalPrefix'=>'00',
  'TerritoryName'=>'Seychelles',
  'CountryCode'=>'SC',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[246]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{3})'
                                              }
                                            ]
                        }
}
;
}

1;
