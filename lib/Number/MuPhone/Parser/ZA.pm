package Number::MuPhone::Parser::ZA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'premiumRate'=>{
                   'exampleNumber'=>'862345678',
                   'nationalNumberPattern'=>'86[2-9]\\d{6}|9[0-2]\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'voip'=>{
            'exampleNumber'=>'871234567',
            'nationalNumberPattern'=>'87\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'TerritoryName'=>'South Africa',
  'CountryCode'=>'ZA',
  'countryCode'=>'27',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000C1/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_South_Africa',
                                 '
          https://www.icasa.org.za/Portals/0/Regulations/Regulations/NumberingPlanReg.pdf
        '
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:6\\d|7[0-46-9])\\d{7}|8(?:[1-4]\\d{1,5}|5\\d{5})\\d{2}',
              'possibleLengths'=>{
                                   'national'=>'[5-9]'
                                 },
              'exampleNumber'=>'711234567'
            },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'860\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'exampleNumber'=>'860123456'
                },
  'uan'=>{
           'exampleNumber'=>'861123456',
           'nationalNumberPattern'=>'861\\d{6}',
           'possibleLengths'=>{
                                'national'=>'9'
                              }
         },
  'tollFree'=>{
                'nationalNumberPattern'=>'80\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'exampleNumber'=>'801234567'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[1-79]\\d{8}|8\\d{4,8}'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'860',
                                                'pattern'=>'(860)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'8[1-4]',
                                                'pattern'=>'(\\d{2})(\\d{3,4})'
                                              },
                                              {
                                                'leadingDigits'=>'8[1-4]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2,3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[1-79]|8(?:[0-57]|6[1-9])'
                                              }
                                            ]
                        },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'101234567',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'(?:1[0-8]|2[1-378]|3[1-69]|4\\d|5[1346-8])\\d{7}'
               },
  'nationalPrefix'=>'0'
}
;
}

1;
