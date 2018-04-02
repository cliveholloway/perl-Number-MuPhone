package Number::MuPhone::Parser::YT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'639(?:0[0-79]|1[019]|[26]\\d|3[09]|[45]0|7[06]|9[04-79])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'639012345'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[268]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'269601234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'269(?:6[0-4]|50)\\d{4}'
               },
  'countryCode'=>'262',
  'nationalPrefix'=>'0',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_France',
                                 'http://www.comores-online.com/mwezinet/internet/262',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION'
                               ]
                },
  'CountryCode'=>'YT',
  'TerritoryName'=>'Mayotte',
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'801234567',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'80\\d{7}'
              },
  'leadingDigits'=>'269|63'
}
;
}

1;
