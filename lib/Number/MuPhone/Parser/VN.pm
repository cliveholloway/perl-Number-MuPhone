package Number::MuPhone::Parser::VN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'nationalNumberPattern'=>'[17]99\\d{4}|69\\d{5,6}|80\\d{5}',
           'possibleLengths'=>{
                                'national'=>'7,8'
                              },
           'exampleNumber'=>'1992000'
         },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000E4/en',
                                 'http://en.wikipedia.org/wiki/%2B84'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'912345678',
              'nationalNumberPattern'=>'(?:9\\d|1(?:2\\d|6[2-9]|8[68]|99))\\d{7}|8(?:6[89]|8\\d|9[89])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9,10'
                                 }
            },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'countryCode'=>'84',
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Viet Nam (Vietnam)',
  'CountryCode'=>'VN',
  'premiumRate'=>{
                   'exampleNumber'=>'1900123456',
                   'possibleLengths'=>{
                                        'national'=>'[8-10]'
                                      },
                   'nationalNumberPattern'=>'1900\\d{4,6}'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2(?:0[3-9]|1[0-689]|2[0-25-9]|3[2-9]|[48][02-9]|5[124-9]?|6[0-39]?|7[0-7]?|9[0-4679])\\d|3(?:[0136]|[25][01])\\d|4\\d{2}|5(?:0[01]|[5-9])\\d|6(?:[0-46-8]|5[01])\\d|7(?:[02-79]|[18][01])\\d)\\d{6}|8(?:[2-5]\\d|6[236]|7[13])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'9,10'
                                    },
                 'exampleNumber'=>'2101234567'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[17]99',
                                                'format'=>'$1 $2',
                                                'pattern'=>'([17]99)(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'([48])(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'4|8(?:[2-5]|6[236]|7[13])'
                                              },
                                              {
                                                'leadingDigits'=>'2[5-7]|3[0136]|5[5-9]|6[0-46-8]|7[02-79]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([235-7]\\d)(\\d{4})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'80',
                                                'pattern'=>'(80)(\\d{5})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'69',
                                                'pattern'=>'(69\\d)(\\d{4,5})'
                                              },
                                              {
                                                'pattern'=>'([235-7]\\d{2})(\\d{4})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'2(?:[0-489]|5[124-9]|6[0-39]|7[0-7])|3[25]|50|65|7[18]'
                                              },
                                              {
                                                'pattern'=>'([89]\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'8(?:8|9[89])|9',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1(?:[26]|8[68]|99)',
                                                'pattern'=>'(1[2689]\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(86[89])(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'86[89]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1[89]00)(\\d{4,6})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1[89]0'
                                              }
                                            ]
                        },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'1992000',
                               'possibleLengths'=>{
                                                    'national'=>'7,8'
                                                  },
                               'nationalNumberPattern'=>'[17]99\\d{4}|69\\d{5,6}'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[167]\\d{6,9}|[2-59]\\d{7,9}|8\\d{6,8}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'1800123456',
                'possibleLengths'=>{
                                     'national'=>'[8-10]'
                                   },
                'nationalNumberPattern'=>'1800\\d{4,6}'
              }
}
;
}

1;
