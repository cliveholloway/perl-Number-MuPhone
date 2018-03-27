package Number::MuPhone::Parser::RE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'exampleNumber'=>'810123456',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8(?:1[019]|2[0156]|84|90)\\d{6}'
                },
  'leadingDigits'=>'262|69|8',
  'mobile'=>{
              'exampleNumber'=>'692123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'69(?:2\\d{2}|3(?:0[0-46]|1[013]|2[0-2]|3[039]|4[0-7]|5[05]|6[06]|7[07]|8[0-38]|9[0-479]))\\d{4}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200004B/en',
                                 'http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION'
                               ]
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'262',
  'CountryCode'=>'RE',
  'TerritoryName'=>'Réunion (French Departments and Territories in the Indian Ocean)',
  'premiumRate'=>{
                   'exampleNumber'=>'891123456',
                   'nationalNumberPattern'=>'89[1-37-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'262161234',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'262\\d{6}'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'',
                                                'pattern'=>'([268]\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'nationalNumberPattern'=>'80\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'801234567'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[268]\\d{8}'
                 },
  'mainCountryForCode'=>'true'
}
;
}

1;
