package Number::MuPhone::Parser::GM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'3012345',
              'nationalNumberPattern'=>'[23679]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{6}'
                 },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:4(?:[23]\\d{2}|4(?:1[024679]|[6-9]\\d))|5(?:54[0-7]|6(?:[67]\\d)|7(?:1[04]|2[035]|3[58]|48))|8\\d{3})\\d{3}',
                 'exampleNumber'=>'5661234'
               },
  'countryCode'=>'220',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200004F/en'
                },
  'CountryCode'=>'GM',
  'TerritoryName'=>'Gambia',
  'internationalPrefix'=>'00'
}
;
}

1;
