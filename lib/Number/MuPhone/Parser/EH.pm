package Number::MuPhone::Parser::EH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'leadingDigits'=>'528[89]',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'528[89]\\d{5}',
                 'exampleNumber'=>'528812345'
               },
  'nationalPrefix'=>'0',
  'tollFree'=>{
                'exampleNumber'=>'801234567',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'80\\d{7}'
              },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'5924[01]\\d{4}',
            'exampleNumber'=>'592401234'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5-9]\\d{8}'
                 },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'89\\d{7}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'891234567'
                 },
  'TerritoryName'=>'Western Sahara',
  'CountryCode'=>'EH',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'internationalPrefix'=>'00',
  'countryCode'=>'212',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'exampleNumber'=>'650123456',
              'nationalNumberPattern'=>'(?:6(?:[0-79]\\d|8[0-247-9])|7(?:[07][07]|6[12]))\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000090/en'
                }
}
;
}

1;
