package Number::MuPhone::Parser::MC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'TerritoryName'=>'Monaco',
  'CountryCode'=>'MC',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200008D/en'
                },
  'tollFree'=>{
                'exampleNumber'=>'90123456',
                'nationalNumberPattern'=>'90\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'internationalPrefix'=>'00',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'87012345',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'870\\d{5}'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[34689]\\d{7,8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'3\\d{7}|4(?:4\\d|5[1-9])\\d{5}|6\\d{8}',
              'possibleLengths'=>{
                                   'national'=>'8,9'
                                 },
              'exampleNumber'=>'612345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[39]',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'4'
                                              },
                                              {
                                                'pattern'=>'(6)(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'6',
                                                'format'=>'$1 $2 $3 $4 $5'
                                              },
                                              {
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'countryCode'=>'377',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'870\\d{5}|9[2-47-9]\\d{6}',
                 'exampleNumber'=>'99123456'
               },
  'nationalPrefixFormattingRule'=>'$NP$FG'
}
;
}

1;
