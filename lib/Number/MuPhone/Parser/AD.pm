package Number::MuPhone::Parser::AD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[137-9]|6[0-8]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'180[02]',
                                                'pattern'=>'(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'690',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'6,9'
                                 },
              'nationalNumberPattern'=>'(?:3\\d|6(?:[0-8]|90\\d{2}))\\d{4}',
              'exampleNumber'=>'312345'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[16]\\d{5,8}|[37-9]\\d{5}'
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'712345',
                 'nationalNumberPattern'=>'[78]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    }
               },
  'countryCode'=>'376',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000005/en'
                },
  'CountryCode'=>'AD',
  'TerritoryName'=>'Andorra',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'18000000',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'1800\\d{4}'
                             },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'912345',
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      },
                   'nationalNumberPattern'=>'[19]\\d{5}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'180[02]\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'18001234'
              }
}
;
}

1;
