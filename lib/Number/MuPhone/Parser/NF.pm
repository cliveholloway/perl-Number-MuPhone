package Number::MuPhone::Parser::NF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'localOnly'=>'5',
                                   'national'=>'6'
                                 },
              'nationalNumberPattern'=>'3[58]\\d{4}',
              'exampleNumber'=>'381234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200009D/en'
                },
  'countryCode'=>'672',
  'internationalPrefix'=>'00',
  'CountryCode'=>'NF',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1'
                                              },
                                              {
                                                'leadingDigits'=>'3',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d)(\\d{5})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Norfolk Island',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[13]\\d{5}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'106609',
                 'nationalNumberPattern'=>'(?:1(?:06|17|28|39)|3[012]\\d)\\d{3}',
                 'possibleLengths'=>{
                                      'localOnly'=>'5',
                                      'national'=>'6'
                                    }
               }
}
;
}

1;
