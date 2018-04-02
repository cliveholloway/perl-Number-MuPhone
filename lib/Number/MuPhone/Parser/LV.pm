package Number::MuPhone::Parser::LV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'exampleNumber'=>'80123456',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'80\\d{6}'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'90123456',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'90\\d{6}'
                 },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'81\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'81123456'
                },
  'TerritoryName'=>'Latvia',
  'CountryCode'=>'LV',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000076/en',
                                 'http://en.wikipedia.org/wiki/+371'
                               ]
                },
  'countryCode'=>'371',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'6\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'63123456'
               },
  'mobileNumberPortableRegion'=>'true',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2689]\\d{7}'
                 },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'2\\d{7}',
              'exampleNumber'=>'21234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'([2689]\\d)(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        }
}
;
}

1;
