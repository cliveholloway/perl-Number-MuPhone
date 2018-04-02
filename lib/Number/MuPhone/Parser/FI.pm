package Number::MuPhone::Parser::FI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{5,6}',
                'possibleLengths'=>{
                                     'national'=>'8,9'
                                   },
                'exampleNumber'=>'800123456'
              },
  'CountryCode'=>'FI',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'358',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mainCountryForCode'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[16]\\d{6,9}|2\\d{4,9}|[35]\\d{5,9}|4\\d{7,10}|7\\d{7,9}|[89]\\d{6,8}'
                 },
  'uan'=>{
           'exampleNumber'=>'10112345',
           'possibleLengths'=>{
                                'national'=>'[5-10]'
                              },
           'nationalNumberPattern'=>'10(?:0\\d{4,6}|[1-9]\\d{5,7})|2(?:0(?:0\\d{4,6}|[13-8]\\d{5,7}|2(?:[023]\\d{4,5}|[14-9]\\d{4,6})|9(?:[0-7]\\d{4,6}|[89]\\d{1,6}))|9\\d{6,8})|3(?:0(?:0\\d{3,7}|[1-57-9]\\d{5,7}|6(?:\\d{3}|\\d{5,7}))|93\\d{5,7})|60(?:[12]\\d{5,6}|6\\d{7})|7(?:1\\d{7}|3\\d{8}|5[03-9]\\d{5,6})'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{3})(\\d{3,7})',
                                                'leadingDigits'=>'(?:[16-8]0|300)'
                                              },
                                              {
                                                'format'=>'$1',
                                                'leadingDigits'=>'116',
                                                'pattern'=>'(116\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1[3-9]|2[09]|4|50|7(?:[13]|5[03-9])',
                                                'pattern'=>'(\\d{2})(\\d{3,9})'
                                              },
                                              {
                                                'pattern'=>'(\\d)(\\d{5,9})',
                                                'leadingDigits'=>'[25689][1-8]|3(?:0[1-9]|[1-8])',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'39',
                                                'pattern'=>'(39\\d)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'412345678',
              'possibleLengths'=>{
                                   'national'=>'[6-11]'
                                 },
              'nationalNumberPattern'=>'4(?:[0-8]\\d{6,8}|9\\d{9})|50\\d{4,8}'
            },
  'premiumRate'=>{
                   'exampleNumber'=>'600123456',
                   'nationalNumberPattern'=>'[67]00\\d{5,6}',
                   'possibleLengths'=>{
                                        'national'=>'8,9'
                                      }
                 },
  'internationalPrefix'=>'00|99(?:[02469]|5(?:11|33|5[59]|88|9[09]))',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'1001234',
                               'possibleLengths'=>{
                                                    'national'=>'[5-10]'
                                                  },
                               'nationalNumberPattern'=>'100\\d{4,6}|20(?:0\\d{4,6}|2[023]\\d{4,5}|9[89]\\d{1,6})|300\\d{3,7}|60(?:[12]\\d{5,6}|6\\d{7})|7(?:1\\d{7}|3\\d{8}|5[03-9]\\d{5,6})'
                             },
  'TerritoryName'=>'Finland',
  'preferredInternationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'https://www.viestintavirasto.fi/internetpuhelin/puhelinverkonnumerointi.html'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'131234567',
                 'possibleLengths'=>{
                                      'national'=>'[7-9]'
                                    },
                 'nationalNumberPattern'=>'1[3-79][1-8]\\d{4,6}|[235689][1-8]\\d{5,7}'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
