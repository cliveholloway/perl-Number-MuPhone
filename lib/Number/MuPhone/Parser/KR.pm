package Number::MuPhone::Parser::KR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:2|3[1-3]|[46][1-4]|5[1-5])(?:1\\d{2,3}|[1-9]\\d{6,7})',
                 'possibleLengths'=>{
                                      'national'=>'[4-6],[8-10]',
                                      'localOnly'=>'3,7'
                                    },
                 'exampleNumber'=>'22123456'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'carrierCodeFormattingRule'=>'$NP$CC-$FG',
  'pager'=>{
             'exampleNumber'=>'1523456789',
             'possibleLengths'=>{
                                  'national'=>'9,10'
                                },
             'nationalNumberPattern'=>'15\\d{7,8}'
           },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'1(?:0|1[19]|[69]9|5(?:44|59|8))|[57]0',
                                                'format'=>'$1-$2-$3',
                                                'pattern'=>'(\\d{2})(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1-$2-$3',
                                                'leadingDigits'=>'1(?:[01]|5(?:[1-3]|4[56])|6[2-8]|[7-9])|[68]0|[3-6][1-9][1-9]',
                                                'pattern'=>'(\\d{2})(\\d{3,4})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'1312',
                                                'format'=>'$1-$2-$3',
                                                'pattern'=>'(\\d{3})(\\d)(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{4})',
                                                'format'=>'$1-$2-$3',
                                                'leadingDigits'=>'131[13-9]'
                                              },
                                              {
                                                'leadingDigits'=>'13[2-9]',
                                                'format'=>'$1-$2-$3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1-$2-$3-$4',
                                                'leadingDigits'=>'30'
                                              },
                                              {
                                                'format'=>'$1-$2-$3',
                                                'leadingDigits'=>'2[1-9]',
                                                'pattern'=>'(\\d)(\\d{3,4})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d)(\\d{3,4})',
                                                'leadingDigits'=>'21[0-46-9]',
                                                'format'=>'$1-$2'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3,4})',
                                                'format'=>'$1-$2',
                                                'leadingDigits'=>'[3-6][1-9]1(?:[0-46-9])'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'1(?:5(?:22|44|66|77|88|99)|6(?:00|44|6[16]|70|88)|8(?:00|33|55|77|99))',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'007981234567',
                               'nationalNumberPattern'=>'00798\\d{7,9}',
                               'possibleLengths'=>{
                                                    'national'=>'[12-14]'
                                                  }
                             },
  'nationalPrefixForParsing'=>'0(8[1-46-8]|85\\d{2})?',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'007\\d{9,11}|[1-7]\\d{3,9}|8\\d{8}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'801234567',
                'possibleLengths'=>{
                                     'national'=>'9,[12-14]'
                                   },
                'nationalNumberPattern'=>'(?:00798\\d{0,2}|80)\\d{7}'
              },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'nationalNumberPattern'=>'1(?:5(?:22|44|66|77|88|99)|6(?:00|44|6[16]|70|88)|8(?:00|33|55|77|99))\\d{4}',
           'exampleNumber'=>'15441234'
         },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000072/en',
                                 'http://en.wikipedia.org/wiki/%2B82',
                                 'http://www.kcc.go.kr/user.do?mode=view&page=P02030300&dc=K02030300&boardId=1074&boardSeq=2349',
                                 'http://www.kcc.go.kr/user.do?mode=view&page=P02030300&dc=K02030300&boardId=1074&boardSeq=2240',
                                 'http://www.telecentro.co.kr/sub/index.php?job=detail&ebcf_id=faq&page=1&mid=0503&eb_seq=36'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'1000000000',
              'nationalNumberPattern'=>'1[0-26-9]\\d{7,8}',
              'possibleLengths'=>{
                                   'national'=>'9,10'
                                 }
            },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'82',
  'internationalPrefix'=>'00(?:[124-68]|3\\d{2}|7(?:[0-8]\\d|9[0-79]))',
  'CountryCode'=>'KR',
  'TerritoryName'=>'Korea (Rep. of)',
  'premiumRate'=>{
                   'exampleNumber'=>'602345678',
                   'nationalNumberPattern'=>'60[2-9]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'50\\d{8}',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'exampleNumber'=>'5012345678'
                    },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'70\\d{8}',
            'exampleNumber'=>'7012345678'
          }
}
;
}

1;
