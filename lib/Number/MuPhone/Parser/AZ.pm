package Number::MuPhone::Parser::AZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'exampleNumber'=>'401234567',
              'nationalNumberPattern'=>'(?:36554|(?:4[04]|5[015]|60|7[07])\\d{3})\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'(?:1[28]|2(?:[45]2|[0-36])|365)',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[4-8]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'9',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{8}'
                 },
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'nationalPrefix'=>'0',
  'countryCode'=>'994',
  'fixedLine'=>{
                 'exampleNumber'=>'123123456',
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:1[28]\\d{3}|2(?:02|1[24]|2[2-4]|33|[45]2|6[23])\\d{2}|365(?:[0-46-9]\\d|5[0-35-9]))\\d{4}'
               },
  'mobileNumberPortableRegion'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200000F/en'
                },
  'CountryCode'=>'AZ',
  'TerritoryName'=>'Azerbaijan',
  'tollFree'=>{
                'nationalNumberPattern'=>'88\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'881234567'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'900200123',
                   'nationalNumberPattern'=>'900200\\d{3}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 }
}
;
}

1;
