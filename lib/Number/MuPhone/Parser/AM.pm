package Number::MuPhone::Parser::AM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'10123456',
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:1[0-2]\\d|2(?:2[2-46]|3[1-8]|4[2-69]|5[2-7]|6[1-9]|8[1-7])|3[12]2|47\\d)\\d{5}'
               },
  'nationalPrefix'=>'0',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90[016]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'90012345'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200000A/en',
                                 'http://en.wikipedia.org/wiki/%2B374',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Nagorno-Karabakh_Republic'
                               ]
                },
  'TerritoryName'=>'Armenia',
  'nationalPrefixFormattingRule'=>'($NP$FG)',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'374',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'leadingDigits'=>'1|47'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{2})(\\d{6})',
                                                'leadingDigits'=>'4[1349]|[5-7]|9[1-9]'
                                              },
                                              {
                                                'leadingDigits'=>'[23]',
                                                'pattern'=>'(\\d{3})(\\d{5})',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{3})',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'leadingDigits'=>'8|90',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:4[1349]|55|77|9[1-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'77123456'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-9]\\d{7}'
                 },
  'voip'=>{
            'exampleNumber'=>'60271234',
            'nationalNumberPattern'=>'60(?:2[078]|[3-7]\\d|8[0-5])\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'sharedCost'=>{
                  'exampleNumber'=>'80112345',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'80[1-4]\\d{5}'
                },
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'CountryCode'=>'AM'
}
;
}

1;
