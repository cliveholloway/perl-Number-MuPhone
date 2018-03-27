package Number::MuPhone::Parser::PA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2001234',
                 'nationalNumberPattern'=>'(?:1(?:0[0-8]|1[49]|2[37]|3[0137]|4[147]|5[05]|6[58]|7[0167]|8[58]|9[139])|2(?:[0235679]\\d|1[0-7]|4[04-9]|8[028])|3(?:[09]\\d|1[014-7]|2[0-3]|3[03]|4[03-57]|55|6[068]|7[06-8]|8[06-9])|4(?:3[013-69]|4\\d|7[0-589])|5(?:[01]\\d|2[0-7]|[56]0|79)|7(?:0[09]|2[0-267]|3[06]|[469]0|5[06-9]|7[0-24-79]|8[7-9])|8(?:09|[34]\\d|5[0134]|8[02])|9(?:0[6-9]|1[016-8]|2[036-8]|3[3679]|40|5[0489]|6[06-9]|7[046-9]|8[36-8]|9[1-9]))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'nationalNumberPattern'=>'80[09]\\d{4}',
                'exampleNumber'=>'8001234'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{6,7}'
                 },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:779|8(?:55|60|7[78])|9(?:00|81))\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      },
                   'exampleNumber'=>'8601234'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'format'=>'$1-$2',
                                                'leadingDigits'=>'[1-57-9]'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'6',
                                                'format'=>'$1-$2'
                                              }
                                            ]
                        },
  'CountryCode'=>'PA',
  'TerritoryName'=>'Panama',
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'507',
  'mobile'=>{
              'nationalNumberPattern'=>'(?:1[16]1|21[89]|8(?:1[01]|7[23]))\\d{4}|6(?:[024-9]\\d|1[0-5]|3[0-24-9])\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'7,8'
                                 },
              'exampleNumber'=>'60012345'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.asep.gob.pa/telecom/pnn/default.asp',
                                 'http://en.wikipedia.org/wiki/%2B507'
                               ]
                }
}
;
}

1;
