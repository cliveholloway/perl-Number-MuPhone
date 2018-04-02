package Number::MuPhone::Parser::EH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'212',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'528[89]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'exampleNumber'=>'528812345'
               },
  'mobile'=>{
              'exampleNumber'=>'650123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:6(?:[0-79]\\d|8[0-247-9])|7(?:[07][07]|6[12]))\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'voip'=>{
            'exampleNumber'=>'592401234',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'5924[01]\\d{4}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[5-9]\\d{8}'
                 },
  'leadingDigits'=>'528[89]',
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'80\\d{7}',
                'exampleNumber'=>'801234567'
              },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'89\\d{7}',
                   'exampleNumber'=>'891234567'
                 },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000090/en'
                },
  'CountryCode'=>'EH',
  'TerritoryName'=>'Western Sahara'
}
;
}

1;
