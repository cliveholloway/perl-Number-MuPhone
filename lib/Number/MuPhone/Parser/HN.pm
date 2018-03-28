package Number::MuPhone::Parser::HN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[237-9]\\d{7}'
                 },
  'TerritoryName'=>'Honduras',
  'CountryCode'=>'HN',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'countryCode'=>'504',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'91234567',
              'nationalNumberPattern'=>'[37-9]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200005F/en'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'22123456',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2(?:2(?:0[019]|1[1-36]|[23]\\d|4[04-6]|5[57]|7[01389]|8[0146-9]|9[012])|4(?:07|2[3-59]|3[13-689]|4[0-68]|5[1-35])|5(?:16|4[03-5]|5\\d|6[4-6]|74)|6(?:[056]\\d|17|3[04]|4[0-378]|[78][0-8]|9[01])|7(?:6[46-9]|7[02-9]|8[034])|8(?:79|8[0-35789]|9[1-57-9]))\\d{4}'
               }
}
;
}

1;
