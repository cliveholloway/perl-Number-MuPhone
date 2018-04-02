package Number::MuPhone::Parser::SI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:1\\d|[25][2-8]|3[24-8]|4[24-8]|7[3-8])\\d{6}',
                 'exampleNumber'=>'11234567'
               },
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefix'=>'0',
  'countryCode'=>'386',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[12]|3[24-8]|4[24-8]|5[2-8]|7[3-8]',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'leadingDigits'=>'[37][01]|4[0139]|51|6',
                                                'pattern'=>'([3-7]\\d)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'([89][09])(\\d{3,6})',
                                                'leadingDigits'=>'[89][09]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'59|8[1-3]',
                                                'pattern'=>'([58]\\d{2})(\\d{5})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'31234567',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:[37][01]\\d|4[0139]\\d|51\\d|6(?:[48]\\d|9[69]))\\d{5}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{6,7}|[89]\\d{4,7}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'(?:59|8[1-3])\\d{6}',
            'exampleNumber'=>'59012345'
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'80\\d{4,6}',
                'possibleLengths'=>{
                                     'national'=>'[6-8]'
                                   },
                'exampleNumber'=>'80123456'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'90123456',
                   'nationalNumberPattern'=>'90\\d{4,6}|89[1-3]\\d{2,5}',
                   'possibleLengths'=>{
                                        'national'=>'[5-8]'
                                      }
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BE/en'
                },
  'CountryCode'=>'SI',
  'TerritoryName'=>'Slovenia'
}
;
}

1;
