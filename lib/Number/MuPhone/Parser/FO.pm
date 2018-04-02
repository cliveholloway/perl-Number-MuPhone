package Number::MuPhone::Parser::FO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'carrierCodeFormattingRule'=>'$CC $FG',
  'countryCode'=>'298',
  'fixedLine'=>{
                 'exampleNumber'=>'201234',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:20|[3-4]\\d|8[19])\\d{4}'
               },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:[27][1-9]|5\\d)\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'exampleNumber'=>'211234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1',
                                                'pattern'=>'(\\d{6})',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'6'
                               },
            'nationalNumberPattern'=>'(?:6[0-36]|88)\\d{4}',
            'exampleNumber'=>'601234'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{5}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[257-9]\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'6'
                                   },
                'exampleNumber'=>'802123'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'901123',
                   'nationalNumberPattern'=>'90(?:[1345][15-7]|2[125-7]|99)\\d{2}',
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      }
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000047/en'
                },
  'CountryCode'=>'FO',
  'TerritoryName'=>'Faroe Islands',
  'nationalPrefixForParsing'=>'(10(?:01|[12]0|88))'
}
;
}

1;
