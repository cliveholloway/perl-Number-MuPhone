package Number::MuPhone::Parser::TW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'0(?:0[25679]|19)',
  'premiumRate'=>{
                   'exampleNumber'=>'203123456',
                   'nationalNumberPattern'=>'20(?:2|[013-9]\\d{2})\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'7,9'
                                      }
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000EB/en',
                                 'https://www.ncc.gov.tw/chinese/files/07080/265_1037_070808_1.doc'
                               ]
                },
  'TerritoryName'=>'Taiwan, China',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    },
                 'nationalNumberPattern'=>'2(?:[235-8]\\d{7}|4\\d{6,7})|[3-8]\\d{7,8}',
                 'exampleNumber'=>'221234567'
               },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}',
                'exampleNumber'=>'800123456'
              },
  'CountryCode'=>'TW',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'886',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'9\\d{8}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'912345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(20)(\\d)(\\d{4})',
                                                'leadingDigits'=>'202',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'20[013-9]',
                                                'pattern'=>'(20)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'2[23-8]|[3-6]|[78][1-9]',
                                                'pattern'=>'([2-8])(\\d{3,4})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'80|9'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(70)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'70'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'7012345678',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'70\\d{8}'
          },
  'preferredExtnPrefix'=>'#',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'2\\d{6,8}|[3-689]\\d{7,8}|7\\d{7,9}'
                 }
}
;
}

1;
