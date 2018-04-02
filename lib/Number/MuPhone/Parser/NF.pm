package Number::MuPhone::Parser::NF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'6',
                                      'localOnly'=>'5'
                                    },
                 'nationalNumberPattern'=>'(?:1(?:06|17|28|39)|3[012]\\d)\\d{3}',
                 'exampleNumber'=>'106609'
               },
  'countryCode'=>'672',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[13]\\d{5}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{4})',
                                                'leadingDigits'=>'1'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d)(\\d{5})',
                                                'leadingDigits'=>'3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'381234',
              'nationalNumberPattern'=>'3[58]\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6',
                                   'localOnly'=>'5'
                                 }
            },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Norfolk Island',
  'CountryCode'=>'NF',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009D/en'
                }
}
;
}

1;
