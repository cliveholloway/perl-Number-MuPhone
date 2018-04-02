package Number::MuPhone::Parser::BA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'premiumRate'=>{
                   'exampleNumber'=>'90123456',
                   'nationalNumberPattern'=>'9[0246]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Bosnia and Herzegovina',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.rak.ba/eng/index.php?uid=1272016657',
                                 'http://en.wikipedia.org/wiki/+387'
                               ]
                },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'30123456',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:[35]\\d|49)\\d{6}'
               },
  'tollFree'=>{
                'exampleNumber'=>'80123456',
                'nationalNumberPattern'=>'8[08]\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'sharedCost'=>{
                  'exampleNumber'=>'82123456',
                  'nationalNumberPattern'=>'8[12]\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'CountryCode'=>'BA',
  'countryCode'=>'387',
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'nationalNumberPattern'=>'70[23]\\d{5}',
           'exampleNumber'=>'70223456'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3-9]\\d{7,8}'
                 },
  'mobile'=>{
              'exampleNumber'=>'61123456',
              'nationalNumberPattern'=>'6(?:0(?:3\\d|40)|[1-356]\\d|44[0-6]|71[137])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'8,9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2-$3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[3-5]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'6[1-356]|[7-9]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'6[047]',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        }
}
;
}

1;
