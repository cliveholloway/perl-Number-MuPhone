package Number::MuPhone::Parser::HT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200005E/en',
                                 'http://www.numberingplans.com/'
                               ]
                },
  'CountryCode'=>'HT',
  'TerritoryName'=>'Haiti',
  'tollFree'=>{
                'nationalNumberPattern'=>'8\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'[34]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'34101234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{4})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'98901234',
            'nationalNumberPattern'=>'(?:9(?:[67][0-4]|8[0-3589]|9\\d))\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-489]\\d{7}'
                 },
  'countryCode'=>'509',
  'fixedLine'=>{
                 'exampleNumber'=>'22453300',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'2(?:2\\d|5[1-5]|81|9[149])\\d{5}'
               }
}
;
}

1;
