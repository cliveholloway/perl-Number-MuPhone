package Number::MuPhone::Parser::CL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'10,11'
                                     },
                  'nationalNumberPattern'=>'600\\d{7,8}',
                  'exampleNumber'=>'6001234567'
                },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}|1230\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'9,11'
                                   }
              },
  'CountryCode'=>'CL',
  'nationalPrefixForParsing'=>'0|(1(?:1[0-69]|2[0-57]|5[13-58]|69|7[0167]|8[018]))',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'56',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'carrierCodeFormattingRule'=>'$CC ($FG)',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'pattern'=>'(\\d)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'2[23]'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[357]|4[1-35]|6[13-57]',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'carrierCodeFormattingRule'=>'$CC ($FG)',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(9)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'9'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'44',
                                                'pattern'=>'(44)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'([68]00)(\\d{3})(\\d{3,4})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'60|8',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'60',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(600)(\\d{3})(\\d{2})(\\d{3})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(1230)(\\d{3})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'1',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'carrierCodeFormattingRule'=>'$CC ($FG)',
                                                'pattern'=>'(\\d{5})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'($FG)',
                                                'leadingDigits'=>'219'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'961234567',
              'possibleLengths'=>{
                                   'localOnly'=>'8',
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'2(?:1962\\d{4}|2\\d{7}|32[0-2467]\\d{5})|(?:3[2-5]|[47][1-35]|5[1-3578]|6[13-57]|9[3-9])\\d{7}'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[2-9]|600|123)\\d{7,8}'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'44\\d{7}',
            'exampleNumber'=>'441234567'
          },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'600\\d{7,8}',
                               'possibleLengths'=>{
                                                    'national'=>'10,11'
                                                  },
                               'exampleNumber'=>'6001234567'
                             },
  'internationalPrefix'=>'(?:0|1(?:1[0-69]|2[0-57]|5[13-58]|69|7[0167]|8[018]))0',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200002A/en',
                                 'http://en.wikipedia.org/wiki/%2B56',
                                 'http://www.subtel.gob.cl/base_numeracion/tabla_numeracion_ido_idd.xlsx'
                               ]
                },
  'TerritoryName'=>'Chile',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'7,8'
                                    },
                 'nationalNumberPattern'=>'2(?:1962\\d{4}|2\\d{7}|32[0-2467]\\d{5})|(?:3[2-5]|[47][1-35]|5[1-3578]|6[13-57]|9[3-9])\\d{7}',
                 'exampleNumber'=>'221234567'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
