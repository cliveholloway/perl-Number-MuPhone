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
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{8}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[0-5]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'801234567'
              },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[1-79]',
                                                'format'=>'$1 $2 $3 $4 $5',
                                                'pattern'=>'([1-79])(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(8\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP $FG'
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
  'sharedCost'=>{
                  'exampleNumber'=>'810123456',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'8(?:1[0-29]|2[0156]|84|90)\\d{6}'
                },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'33',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:6\\d|7[3-9])\\d{7}',
              'exampleNumber'=>'612345678'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200004A/en',
                                 'http://www.arcep.fr/index.php?id=8146',
                                 'http://en.wikipedia.org/wiki/%2B33'
                               ]
                },
  'premiumRate'=>{
                   'exampleNumber'=>'891123456',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'89[1-37-9]\\d{6}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'9\\d{8}',
            'exampleNumber'=>'912345678'
          },
  'TerritoryName'=>'France',
  'CountryCode'=>'FR'
}
;
}

1;
