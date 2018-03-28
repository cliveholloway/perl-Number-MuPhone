package Number::MuPhone::Parser::HT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'(?:9(?:[67][0-4]|8[0-3589]|9\\d))\\d{5}',
            'exampleNumber'=>'98901234'
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'8\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-489]\\d{7}'
                 },
  'TerritoryName'=>'Haiti',
  'CountryCode'=>'HT',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{4})'
                                              }
                                            ]
                        },
  'countryCode'=>'509',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'[34]\\d{7}',
              'exampleNumber'=>'34101234'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200005E/en',
                                 'http://www.numberingplans.com/'
                               ]
                },
  'fixedLine'=>{
                 'exampleNumber'=>'22453300',
                 'nationalNumberPattern'=>'2(?:2\\d|5[1-5]|81|9[149])\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               }
}
;
}

1;
