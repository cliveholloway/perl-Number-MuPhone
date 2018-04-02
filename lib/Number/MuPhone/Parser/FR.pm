package Number::MuPhone::Parser::FR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'123456789',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'[1-5]\\d{8}'
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200004A/en',
                                 'http://www.arcep.fr/index.php?id=8146',
                                 'http://en.wikipedia.org/wiki/%2B33'
                               ]
                },
  'TerritoryName'=>'France',
  'premiumRate'=>{
                   'exampleNumber'=>'891123456',
                   'nationalNumberPattern'=>'89[1-37-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'612345678',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:6\\d|7[3-9])\\d{7}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4 $5',
                                                'pattern'=>'([1-79])(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[1-79]'
                                              },
                                              {
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(8\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'80[6-9]\\d{6}',
           'exampleNumber'=>'806123456'
         },
  'voip'=>{
            'exampleNumber'=>'912345678',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'9\\d{8}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'33',
  'mobileNumberPortableRegion'=>'true',
  'CountryCode'=>'FR',
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8(?:1[0-29]|2[0156]|84|90)\\d{6}',
                  'exampleNumber'=>'810123456'
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[0-5]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'801234567'
              }
}
;
}

1;
