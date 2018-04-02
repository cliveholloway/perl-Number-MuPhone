package Number::MuPhone::Parser::IE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'countryCode'=>'353',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'exampleNumber'=>'850123456',
              'nationalNumberPattern'=>'8(?:22\\d{6}|[35-9]\\d{7})',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(1)(\\d{3,4})(\\d{4})',
                                                'leadingDigits'=>'1',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{5})',
                                                'leadingDigits'=>'2[24-9]|47|58|6[237-9]|9[35-9]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'40[24]|50[45]',
                                                'pattern'=>'(\\d{3})(\\d{5})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'48',
                                                'pattern'=>'(48)(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'81',
                                                'pattern'=>'(818)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'[24-69]|7[14]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'76|8[35-9]',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(8\\d)(\\d)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'8[35-9]5'
                                              },
                                              {
                                                'pattern'=>'(700)(\\d{3})(\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'70',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'1(?:8[059]0|5)',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(\\d{4})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'uan'=>{
           'exampleNumber'=>'818123456',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'818\\d{6}'
         },
  'voip'=>{
            'exampleNumber'=>'761234567',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'76\\d{7}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[124-9]\\d{6,9}'
                 },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'18[59]0\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     },
                  'exampleNumber'=>'1850123456'
                },
  'personalNumber'=>{
                      'exampleNumber'=>'700123456',
                      'nationalNumberPattern'=>'700\\d{6}',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         }
                    },
  'tollFree'=>{
                'exampleNumber'=>'1800123456',
                'nationalNumberPattern'=>'1800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'CountryCode'=>'IE',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'2212345',
                 'nationalNumberPattern'=>'1\\d{7,8}|2(?:1\\d{6,7}|3\\d{7}|[24-9]\\d{5})|4(?:0[24]\\d{5}|[1-469]\\d{7}|5\\d{6}|7\\d{5}|8[0-46-9]\\d{7})|5(?:0[45]\\d{5}|1\\d{6}|[23679]\\d{7}|8\\d{5})|6(?:1\\d{6}|[237-9]\\d{5}|[4-6]\\d{7})|7[14]\\d{7}|9(?:1\\d{6}|[04]\\d{7}|[35-9]\\d{5})',
                 'possibleLengths'=>{
                                      'national'=>'[7-10]',
                                      'localOnly'=>'5,6'
                                    }
               },
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'10'
                                                  },
                               'nationalNumberPattern'=>'18[59]0\\d{6}',
                               'exampleNumber'=>'1850123456'
                             },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'1520123456',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'15(?:1[2-8]|[2-8]0|9[089])\\d{6}'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.comreg.ie/licensing_and_services/numbering_plan_for_ireland.552.440.html',
                                 'http://www.comreg.ie/_fileupload/publications/ComReg1119.pdf'
                               ]
                },
  'voicemail'=>{
                 'nationalNumberPattern'=>'8[35-9]5\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'10'
                                    },
                 'exampleNumber'=>'8551234567'
               },
  'TerritoryName'=>'Ireland'
}
;
}

1;
