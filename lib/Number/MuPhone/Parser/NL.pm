package Number::MuPhone::Parser::NL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'pager'=>{
             'nationalNumberPattern'=>'66\\d{7}',
             'possibleLengths'=>{
                                  'national'=>'9'
                                },
             'exampleNumber'=>'662345678'
           },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{4,8}|[2-7]\\d{8}|[89]\\d{6,9}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'[7-10]'
                                   },
                'nationalNumberPattern'=>'800\\d{4,7}',
                'exampleNumber'=>'8001234'
              },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'14\\d{3,4}',
                               'possibleLengths'=>{
                                                    'national'=>'5,6'
                                                  },
                               'exampleNumber'=>'14123'
                             },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1[035]|2[0346]|3[03568]|4[0356]|5[0358]|7|8[4578]',
                                                'pattern'=>'([1-578]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'1[16-8]|2[259]|3[124]|4[17-9]|5[124679]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([1-5]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'6[0-57-9]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(6)(\\d{8})'
                                              },
                                              {
                                                'pattern'=>'(66)(\\d{7})',
                                                'leadingDigits'=>'66',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'14',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(14)(\\d{3,4})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'80|9',
                                                'pattern'=>'([89]0\\d)(\\d{4,7})'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'(?:1[0135-8]|2[02-69]|3[0-68]|4[0135-9]|[57]\\d|8[478])\\d{7}',
                 'exampleNumber'=>'101234567'
               },
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'31',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B31',
                                 'http://wetten.overheid.nl/BWBR0010198'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'6[1-58]\\d{7}',
              'exampleNumber'=>'612345678'
            },
  'voip'=>{
            'nationalNumberPattern'=>'(?:6760|85\\d{2})\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'851234567'
          },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'[7-10]'
                                      },
                   'nationalNumberPattern'=>'90[069]\\d{4,7}',
                   'exampleNumber'=>'9061234'
                 },
  'TerritoryName'=>'Netherlands',
  'CountryCode'=>'NL',
  'uan'=>{
           'nationalNumberPattern'=>'140(?:1(?:[035]|[16-8]\\d)|2(?:[0346]|[259]\\d)|3(?:[03568]|[124]\\d)|4(?:[0356]|[17-9]\\d)|5(?:[0358]|[124679]\\d)|7\\d|8[458])',
           'possibleLengths'=>{
                                'national'=>'5,6'
                              },
           'exampleNumber'=>'14020'
         }
}
;
}

1;
