package Number::MuPhone::Parser::BY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'[6-11]'
                                                  },
                               'nationalNumberPattern'=>'8(?:0[13]|10|20\\d)\\d{7}|800\\d{3,7}|902\\d{7}',
                               'exampleNumber'=>'82012345678'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-4]\\d{8}|800\\d{3,7}|[89]\\d{9,10}'
                 },
  'nationalPrefixForParsing'=>'8?0?',
  'tollFree'=>{
                'exampleNumber'=>'8011234567',
                'nationalNumberPattern'=>'8(?:0[13]|20\\d)\\d{7}|800\\d{3,7}',
                'possibleLengths'=>{
                                     'national'=>'[6-11]'
                                   }
              },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP 0$FG',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'17(?:[02358]|1[0-2]|9[0189])|2[4-9]|[34]',
                                                'format'=>'$1 $2-$3-$4'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP 0$FG',
                                                'format'=>'$1 $2-$3-$4',
                                                'leadingDigits'=>'1(?:5[24]|6(?:2|3[04-9]|5[0346-9])|7(?:[46]|7[37-9]))|2(?:1[246]|2[25]|3[26])'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP 0$FG',
                                                'pattern'=>'(\\d{4})(\\d{2})(\\d{3})',
                                                'leadingDigits'=>'1(?:5[169]|6(?:3[1-3]|4|5[125])|7(?:1[3-9]|7[0-24-6]|9[2-7]))|2(?:1[35]|2[34]|3[3-5])',
                                                'format'=>'$1 $2-$3'
                                              },
                                              {
                                                'pattern'=>'([89]\\d{2})(\\d{3})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8[01]|9'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'pattern'=>'(82\\d)(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'82'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'800',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'pattern'=>'(800)(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'800',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'pattern'=>'(800)(\\d{2})(\\d{2,4})'
                                              }
                                            ]
                        },
  'preferredInternationalPrefix'=>'8~10',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:1(?:5(?:1[1-5]|[24]\\d|6[2-4]|9[1-7])|6(?:[235]\\d|4[1-7])|7\\d{2})|2(?:1(?:[246]\\d|3[0-35-9]|5[1-9])|2(?:[235]\\d|4[0-8])|3(?:[26]\\d|3[02-79]|4[024-7]|5[03-7])))\\d{5}',
                 'possibleLengths'=>{
                                      'localOnly'=>'[5-7]',
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'152450911'
               },
  'nationalPrefix'=>'8',
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'(?:810|902)\\d{7}',
                   'exampleNumber'=>'9021234567'
                 },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'249\\d{6}',
            'exampleNumber'=>'249123456'
          },
  'TerritoryName'=>'Belarus',
  'CountryCode'=>'BY',
  'countryCode'=>'375',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'810',
  'references'=>{
                  'sourceUrl'=>'http://www.eng.beltelecom.by/en/subscribers/phone-codes'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:2(?:5[5679]|9[1-9])|33\\d|44\\d)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'294911911'
            }
}
;
}

1;
