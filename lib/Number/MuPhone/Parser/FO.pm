package Number::MuPhone::Parser::FO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'201234',
                 'nationalNumberPattern'=>'(?:20|[3-4]\\d|8[19])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    }
               },
  'CountryCode'=>'FO',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{6})',
                                                'format'=>'$1',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'TerritoryName'=>'Faroe Islands',
  'premiumRate'=>{
                   'exampleNumber'=>'901123',
                   'nationalNumberPattern'=>'90(?:[1345][15-7]|2[125-7]|99)\\d{2}',
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      }
                 },
  'nationalPrefixForParsing'=>'(10(?:01|[12]0|88))',
  'voip'=>{
            'exampleNumber'=>'601234',
            'nationalNumberPattern'=>'(?:6[0-36]|88)\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'6'
                               }
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[257-9]\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'6'
                                   },
                'exampleNumber'=>'802123'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{5}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000047/en'
                },
  'mobile'=>{
              'exampleNumber'=>'211234',
              'possibleLengths'=>{
                                   'national'=>'6'
                                 },
              'nationalNumberPattern'=>'(?:[27][1-9]|5\\d)\\d{4}'
            },
  'carrierCodeFormattingRule'=>'$CC $FG',
  'countryCode'=>'298',
  'internationalPrefix'=>'00'
}
;
}

1;
