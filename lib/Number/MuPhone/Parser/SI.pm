package Number::MuPhone::Parser::SI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'SI',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[12]|3[24-8]|4[24-8]|5[2-8]|7[3-8]',
                                                'format'=>'$1 $2 $3 $4',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'pattern'=>'([3-7]\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[37][01]|4[0139]|51|6',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'[89][09]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'([89][09])(\\d{3,6})'
                                              },
                                              {
                                                'pattern'=>'([58]\\d{2})(\\d{5})',
                                                'leadingDigits'=>'59|8[1-3]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Slovenia',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-7]\\d{6,7}|[89]\\d{4,7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'80123456',
                'possibleLengths'=>{
                                     'national'=>'[6-8]'
                                   },
                'nationalNumberPattern'=>'80\\d{4,6}'
              },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'(?:59|8[1-3])\\d{6}',
            'exampleNumber'=>'59012345'
          },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{4,6}|89[1-3]\\d{2,5}',
                   'possibleLengths'=>{
                                        'national'=>'[5-8]'
                                      },
                   'exampleNumber'=>'90123456'
                 },
  'mobile'=>{
              'exampleNumber'=>'31234567',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:[37][01]\\d|4[0139]\\d|51\\d|6(?:[48]\\d|9[69]))\\d{5}'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000BE/en'
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'internationalPrefix'=>'00',
  'countryCode'=>'386',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'11234567',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'7'
                                    },
                 'nationalNumberPattern'=>'(?:1\\d|[25][2-8]|3[24-8]|4[24-8]|7[3-8])\\d{6}'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
