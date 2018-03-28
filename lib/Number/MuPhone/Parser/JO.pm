package Number::MuPhone::Parser::JO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'62001234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:2(?:6(?:2[0-35-9]|3[0-57-8]|4[24-7]|5[0-24-8]|[6-8][023]|9[0-3])|7(?:0[1-79]|10|2[014-7]|3[0-689]|4[019]|5[0-3578]))|32(?:0[1-69]|1[1-35-7]|2[024-7]|3\\d|4[0-3]|[57][023]|6[03])|53(?:0[0-3]|[13][023]|2[0-59]|49|5[0-35-9]|6[15]|7[45]|8[1-6]|9[0-36-9])|6(?:2[50]0|3(?:00|33)|4(?:0[0125]|1[2-7]|2[0569]|[38][07-9]|4[025689]|6[0-589]|7\\d|9[0-2])|5(?:[01][056]|2[034]|3[0-57-9]|4[17-8]|5[0-69]|6[0-35-9]|7[1-379]|8[0-68]|9[02-39]))|87(?:[02]0|7[08]|90))\\d{4}'
               },
  'nationalPrefix'=>'0',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2356]|87'
                                              },
                                              {
                                                'pattern'=>'(7)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'7[457-9]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'70',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{7})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{5,6})',
                                                'leadingDigits'=>'8[0158]|9',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'80\\d{6}',
                'exampleNumber'=>'80012345'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235-9]\\d{7,8}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'pager'=>{
             'exampleNumber'=>'746612345',
             'nationalNumberPattern'=>'74(?:66|77)\\d{5}',
             'possibleLengths'=>{
                                  'national'=>'9'
                                }
           },
  'sharedCost'=>{
                  'exampleNumber'=>'85012345',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'85\\d{6}'
                },
  'uan'=>{
           'exampleNumber'=>'88101234',
           'nationalNumberPattern'=>'8(?:10|8\\d)\\d{5}',
           'possibleLengths'=>{
                                'national'=>'8'
                              }
         },
  'CountryCode'=>'JO',
  'TerritoryName'=>'Jordan',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'900\\d{5}',
                   'exampleNumber'=>'90012345'
                 },
  'personalNumber'=>{
                      'exampleNumber'=>'700123456',
                      'possibleLengths'=>{
                                           'national'=>'9'
                                         },
                      'nationalNumberPattern'=>'70\\d{7}'
                    },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.trc.gov.jo/images/stories/pdf/NNP_ver200[1].pdf?lang=english',
                                 'http://www.itu.int/oth/T020200006E/en',
                                 'http://en.wikipedia.org/wiki/%2B962'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'7(?:55|7[025-9]|8[0-25-9]|9[0-25-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'790123456'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'962',
  'mobileNumberPortableRegion'=>'true'
}
;
}

1;
