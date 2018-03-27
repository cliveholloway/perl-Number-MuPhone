package Number::MuPhone::Parser::TR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'2123456789',
                 'nationalNumberPattern'=>'(?:2(?:[13][26]|[28][2468]|[45][268]|[67][246])|3(?:[13][28]|[24-6][2468]|[78][02468]|92)|4(?:[16][246]|[23578][2468]|4[26]))\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'10'
                                    }
               },
  'pager'=>{
             'possibleLengths'=>{
                                  'national'=>'10'
                                },
             'nationalNumberPattern'=>'512\\d{7}',
             'exampleNumber'=>'5123456789'
           },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>'[23]|4(?:[0-35-9]|4[0-35-9])',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'($NP$FG)',
                                                'nationalPrefixOptionalWhenFormatting'=>'true'
                                              },
                                              {
                                                'leadingDigits'=>'5[02-69]',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{2})(\\d{2})',
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'nationalPrefixFormattingRule'=>'$NP$FG'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'nationalPrefixOptionalWhenFormatting'=>'true',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'51|[89]'
                                              },
                                              {
                                                'pattern'=>'(444)(\\d{1})(\\d{3})',
                                                'leadingDigits'=>'444',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-589]\\d{9}|444\\d{4}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'nationalNumberPattern'=>'800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'444\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'7'
                                                  },
                               'exampleNumber'=>'4441444'
                             },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'7,10'
                              },
           'nationalNumberPattern'=>'444\\d{4}|850\\d{7}',
           'exampleNumber'=>'4441444'
         },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'5(?:(?:0[1-7]|22|[34]\\d|5[1-59]|9[246])\\d{2}|6161)\\d{5}',
              'exampleNumber'=>'5012345678'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B90',
                                 'http://www.itu.int/oth/T02020000D6/en'
                               ]
                },
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'90',
  'CountryCode'=>'TR',
  'TerritoryName'=>'Turkey',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900\\d{7}',
                   'exampleNumber'=>'9001234567'
                 }
}
;
}

1;
