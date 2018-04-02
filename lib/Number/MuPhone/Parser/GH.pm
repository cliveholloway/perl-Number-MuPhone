package Number::MuPhone::Parser::GH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'noInternationalDialling'=>{
                               'exampleNumber'=>'80012345',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'800\\d{5}'
                             },
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000052/en',
                                 'http://www.nca.org.gh/index.php?option=com_content&view=article&id=90&Itemid=65'
                               ]
                },
  'CountryCode'=>'GH',
  'TerritoryName'=>'Ghana',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'233',
  'nationalPrefix'=>'0',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'302345678',
                 'possibleLengths'=>{
                                      'localOnly'=>'7',
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'3(?:0(?:[237]\\d|80)|[167](?:2[0-6]|7\\d|80)|2(?:2[0-5]|7\\d|80)|3(?:2[0-3]|7\\d|80)|4(?:2[013-9]|3[01]|7\\d|80)|5(?:2[0-7]|7\\d|80)|8(?:2[0-2]|7\\d|80)|9(?:[28]0|7\\d))\\d{5}'
               },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:2[034678]\\d|5(?:[0457]\\d|6[01]))\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'231234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[235]'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{5})',
                                                'leadingDigits'=>'8'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235]\\d{8}|8\\d{7}'
                 }
}
;
}

1;
