package Number::MuPhone::Parser::BH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'973',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'17001234',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:1(?:3[1356]|6[0156]|7\\d)\\d|6(?:1[16]\\d|500|6(?:0\\d|3[12]|44|7[7-9])|9[69][69])|7(?:1(?:11|78)|7\\d{2}))\\d{4}'
               },
  'mobile'=>{
              'exampleNumber'=>'36001234',
              'nationalNumberPattern'=>'(?:3(?:[1-4679]\\d|5[013-69]|8[0-47-9])\\d|6(?:3(?:00|33|6[16])|6(?:[69]\\d|3[03-9]|7[0-6])))\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[136-9]\\d{7}'
                 },
  'sharedCost'=>{
                  'exampleNumber'=>'84123456',
                  'nationalNumberPattern'=>'84\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'(?:87|9[014578])\\d{6}',
                   'exampleNumber'=>'90123456'
                 },
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'80123456',
                'nationalNumberPattern'=>'80\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000011/en',
                                 'http://www.tra.org.bh/en/marketNumbering.aspx',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Bahrain'
                               ]
                },
  'CountryCode'=>'BH',
  'TerritoryName'=>'Bahrain'
}
;
}

1;
