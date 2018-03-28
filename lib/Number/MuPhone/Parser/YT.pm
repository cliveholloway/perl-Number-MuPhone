package Number::MuPhone::Parser::YT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_France',
                                 'http://www.comores-online.com/mwezinet/internet/262',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION'
                               ]
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'nationalNumberPattern'=>'639(?:0[0-79]|1[019]|[26]\\d|3[09]|[45]0|7[06]|9[04-79])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'639012345'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'262',
  'CountryCode'=>'YT',
  'TerritoryName'=>'Mayotte',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'tollFree'=>{
                'exampleNumber'=>'801234567',
                'nationalNumberPattern'=>'80\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[268]\\d{8}'
                 },
  'nationalPrefix'=>'0',
  'leadingDigits'=>'269|63',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'269(?:6[0-4]|50)\\d{4}',
                 'exampleNumber'=>'269601234'
               }
}
;
}

1;
