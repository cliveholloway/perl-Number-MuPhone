package Number::MuPhone::Parser::LY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://hlc.ly/price.php'
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'9[1-6]\\d{7}',
              'exampleNumber'=>'912345678'
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'internationalPrefix'=>'00',
  'countryCode'=>'218',
  'CountryCode'=>'LY',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1-$2',
                                                'leadingDigits'=>'',
                                                'pattern'=>'([25679]\\d)(\\d{7})'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Libya (Soc. People’s Libyan Arab Jamahiriya)',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[25679]\\d{8}'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:2[1345]|5[1347]|6[123479]|71)\\d{7}',
                 'exampleNumber'=>'212345678'
               }
}
;
}

1;
