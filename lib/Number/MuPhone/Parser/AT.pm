package Number::MuPhone::Parser::AT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'43',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'exampleNumber'=>'664123456',
              'possibleLengths'=>{
                                   'national'=>'[7-13]'
                                 },
              'nationalNumberPattern'=>'6(?:5[0-3579]|6[013-9]|[7-9]\\d)\\d{4,10}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(116\\d{3})',
                                                'leadingDigits'=>'116'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(1)(\\d{3,12})',
                                                'leadingDigits'=>'1'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'5[079]',
                                                'pattern'=>'(5\\d)(\\d{3,5})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'5[079]',
                                                'pattern'=>'(5\\d)(\\d{3})(\\d{3,4})'
                                              },
                                              {
                                                'pattern'=>'(5\\d)(\\d{4})(\\d{4,7})',
                                                'leadingDigits'=>'5[079]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3,10})',
                                                'leadingDigits'=>'316|46|51|732|6(?:5[0-3579]|[6-9])|7(?:[28]0)|[89]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{3,9})',
                                                'leadingDigits'=>'2|3(?:1[1-578]|[3-8])|4[2378]|5[2-6]|6(?:[12]|4[1-9]|5[468])|7(?:2[1-8]|35|4[1-8]|[5-79])'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'780123456',
            'nationalNumberPattern'=>'780\\d{6,10}',
            'possibleLengths'=>{
                                 'national'=>'[9-13]'
                               }
          },
  'uan'=>{
           'exampleNumber'=>'50123',
           'possibleLengths'=>{
                                'national'=>'[5-13]'
                              },
           'nationalNumberPattern'=>'5(?:(?:0[1-9]|17)\\d{2,10}|[79]\\d{3,11})|720\\d{6,10}'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{3,12}'
                 },
  'sharedCost'=>{
                  'exampleNumber'=>'810123456',
                  'possibleLengths'=>{
                                       'national'=>'[8-13]'
                                     },
                  'nationalNumberPattern'=>'8(?:10\\d|2(?:[01]\\d|8\\d?))\\d{5,9}'
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{6,10}',
                'possibleLengths'=>{
                                     'national'=>'[9-13]'
                                   },
                'exampleNumber'=>'800123456'
              },
  'CountryCode'=>'AT',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'1234567890',
                 'nationalNumberPattern'=>'1\\d{3,12}|(?:2(?:1[467]|2[13-8]|5[2357]|6[1-46-8]|7[1-8]|8[124-7]|9[1458])|3(?:1[1-8]|3[23568]|4[5-7]|5[1378]|6[1-38]|8[3-68])|4(?:2[1-8]|35|63|7[1368]|8[2457])|5(?:12|2[1-8]|3[357]|4[147]|5[12578]|6[37])|6(?:13|2[1-47]|4[1-35-8]|5[468]|62)|7(?:2[1-8]|3[25]|4[13478]|5[68]|6[16-8]|7[1-6]|9[45]))\\d{3,10}',
                 'possibleLengths'=>{
                                      'national'=>'[4-13]',
                                      'localOnly'=>'3'
                                    }
               },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'900123456',
                   'possibleLengths'=>{
                                        'national'=>'[9-13]'
                                      },
                   'nationalNumberPattern'=>'9(?:0[01]|3[019])\\d{6,10}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.rtr.at/en/tk/E129'
                },
  'TerritoryName'=>'Austria'
}
;
}

1;
