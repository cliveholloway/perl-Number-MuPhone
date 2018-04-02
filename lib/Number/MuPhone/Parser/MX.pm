package Number::MuPhone::Parser::MX;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'01',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'7,8',
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'(?:33|55|81)\\d{8}|(?:2(?:0[01]|2[2-9]|3[1-35-8]|4[13-9]|7[1-689]|8[1-578]|9[467])|3(?:1[1-79]|[2458][1-9]|7[1-8]|9[1-5])|4(?:1[1-57-9]|[24-6][1-9]|[37][1-8]|8[1-35-9]|9[2-689])|5(?:88|9[1-79])|6(?:1[2-68]|[234][1-9]|5[1-3689]|6[12457-9]|7[1-7]|8[67]|9[4-8])|7(?:[13467][1-9]|2[1-8]|5[13-9]|8[1-69]|9[17])|8(?:2[13-689]|3[1-6]|4[124-6]|6[1246-9]|7[1-378]|9[12479])|9(?:1[346-9]|2[1-4]|3[2-46-8]|5[1348]|[69][1-9]|7[12]|8[1-8]))\\d{7}',
                 'exampleNumber'=>'2221234567'
               },
  'premiumRate'=>{
                   'exampleNumber'=>'9001234567',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'900\\d{7}'
                 },
  'internationalPrefix'=>'0[09]',
  'TerritoryName'=>'Mexico',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200008A/en',
                                 'http://en.wikipedia.org/wiki/%2B52',
                                 'http://en.wikipedia.org/wiki/Premium-rate_telephone_number#Mexico',
                                 'http://en.wikipedia.org/wiki/Toll-free_telephone_number'
                               ]
                },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'countryCode'=>'52',
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'$NP $FG',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{9,10}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'11'
                                 },
              'nationalNumberPattern'=>'1(?:(?:33|55|81)\\d{8}|(?:2(?:2[1-9]|3[1-35-8]|4[13-9]|7[1-689]|8[1-578]|9[467])|3(?:1[1-79]|[2458][1-9]|7[1-8]|9[1-5])|4(?:1[1-57-9]|[24-6][1-9]|[37][1-8]|8[1-35-9]|9[2-689])|5(?:88|9[1-79])|6(?:1[2-68]|[2-4][1-9]|5[1-3689]|6[12457-9]|7[1-7]|8[67]|9[4-8])|7(?:[13467][1-9]|2[1-8]|5[13-9]|8[1-69]|9[17])|8(?:2[13-689]|3[1-6]|4[124-6]|6[1246-9]|7[1-378]|9[12479])|9(?:1[346-9]|2[1-4]|3[2-46-8]|5[1348]|[69][1-9]|7[12]|8[1-8]))\\d{7})',
              'exampleNumber'=>'12221234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'33|55|81',
                                                'pattern'=>'([358]\\d)(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[2467]|3[0-2457-9]|5[089]|8[02-9]|9[0-35-9]',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'format'=>'044 $2 $3 $4',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1)([358]\\d)(\\d{4})(\\d{4})',
                                                'leadingDigits'=>'1(?:33|55|81)'
                                              },
                                              {
                                                'format'=>'044 $2 $3 $4',
                                                'intlFormat'=>'$1 $2 $3 $4',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(1)(\\d{3})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'1(?:[2467]|3[0-2457-9]|5[089]|8[2-9]|9[1-35-9])'
                                              }
                                            ]
                        },
  'personalNumber'=>{
                      'exampleNumber'=>'5001234567',
                      'possibleLengths'=>{
                                           'national'=>'10'
                                         },
                      'nationalNumberPattern'=>'500\\d{7}'
                    },
  'tollFree'=>{
                'exampleNumber'=>'8001234567',
                'nationalNumberPattern'=>'8(?:00|88)\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   }
              },
  'sharedCost'=>{
                  'exampleNumber'=>'3001234567',
                  'nationalNumberPattern'=>'300\\d{7}',
                  'possibleLengths'=>{
                                       'national'=>'10'
                                     }
                },
  'nationalPrefixForParsing'=>'0[12]|04[45](\\d{10})',
  'CountryCode'=>'MX',
  'nationalPrefixTransformRule'=>'1$1'
}
;
}

1;
