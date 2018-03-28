package Number::MuPhone::Parser::BE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'nationalNumberPattern'=>'78\\d{6}',
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'exampleNumber'=>'78123456'
         },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'12345678',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:1[0-69]|[23][2-8]|4[23]|5\\d|6[013-57-9]|71|8[1-79]|9[2-4])\\d{6}|80[2-8]\\d{5}'
               },
  'countryCode'=>'32',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.bipt.be/en/operators/telecommunication/Numbering/Database',
                                 'http://www.bipt.be/public/files/en/474/20140829153659_Belgian_numbering_plan',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Belgium'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'470123456',
              'nationalNumberPattern'=>'4(?:6[0135-8]|[79]\\d|8[3-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:70[2-467]|90[0-79])\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'90123456'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{7,8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'4[6-9]',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'leadingDigits'=>'[23]|4[23]|9[2-4]',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[156]|7[018]|8(?:0[1-9]|[1-79])',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'leadingDigits'=>'(?:80|9)0',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})'
                                              }
                                            ]
                        },
  'CountryCode'=>'BE',
  'TerritoryName'=>'Belgium'
}
;
}

1;
