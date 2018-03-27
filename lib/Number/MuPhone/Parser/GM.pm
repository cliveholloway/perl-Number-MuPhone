package Number::MuPhone::Parser::GM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:4(?:[23]\\d{2}|4(?:1[024679]|[6-9]\\d))|5(?:54[0-7]|6(?:[67]\\d)|7(?:1[04]|2[035]|3[58]|48))|8\\d{3})\\d{3}',
                 'exampleNumber'=>'5661234'
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{6}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'GM',
  'TerritoryName'=>'Gambia',
  'countryCode'=>'220',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'[23679]\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'3012345'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200004F/en'
                }
}
;
}

1;
