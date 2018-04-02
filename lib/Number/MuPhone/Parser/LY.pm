package Number::MuPhone::Parser::LY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9[1-6]\\d{7}',
              'exampleNumber'=>'912345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'([25679]\\d)(\\d{7})',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[25679]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'218',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:2[1345]|5[1347]|6[123479]|71)\\d{7}',
                 'exampleNumber'=>'212345678'
               },
  'references'=>{
                  'sourceUrl'=>'http://hlc.ly/price.php'
                },
  'CountryCode'=>'LY',
  'TerritoryName'=>'Libya (Soc. People’s Libyan Arab Jamahiriya)',
  'internationalPrefix'=>'00'
}
;
}

1;
