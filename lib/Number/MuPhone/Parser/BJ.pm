package Number::MuPhone::Parser::BJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:02|1[037]|2[45]|3[68])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'20211234'
               },
  'countryCode'=>'229',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2689]\\d{7}|7\\d{3}'
                 },
  'uan'=>{
           'exampleNumber'=>'81123456',
           'nationalNumberPattern'=>'81\\d{6}',
           'possibleLengths'=>{
                                'national'=>'8'
                              }
         },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'857[58]\\d{4}',
            'exampleNumber'=>'85751234'
          },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'90011234',
              'nationalNumberPattern'=>'(?:6[1-8]|9[03-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'4'
                                   },
                'nationalNumberPattern'=>'7[3-5]\\d{2}',
                'exampleNumber'=>'7312'
              },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Benin',
  'CountryCode'=>'BJ',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000017/en'
                }
}
;
}

1;
