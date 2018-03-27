package Number::MuPhone::Parser::AD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000005/en'
                },
  'mobile'=>{
              'exampleNumber'=>'312345',
              'nationalNumberPattern'=>'(?:3\\d|6(?:[0-8]|90\\d{2}))\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'6,9'
                                 }
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'376',
  'CountryCode'=>'AD',
  'TerritoryName'=>'Andorra',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[137-9]|6[0-8]',
                                                'pattern'=>'(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'180[02]'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'690'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'18001234',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'180[02]\\d{4}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[16]\\d{5,8}|[37-9]\\d{5}'
                 },
  'noInternationalDialling'=>{
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'nationalNumberPattern'=>'1800\\d{4}',
                               'exampleNumber'=>'18000000'
                             },
  'premiumRate'=>{
                   'exampleNumber'=>'912345',
                   'nationalNumberPattern'=>'[19]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      }
                 },
  'fixedLine'=>{
                 'exampleNumber'=>'712345',
                 'nationalNumberPattern'=>'[78]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'6'
                                    }
               }
}
;
}

1;
