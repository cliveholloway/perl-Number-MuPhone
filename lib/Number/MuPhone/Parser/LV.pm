package Number::MuPhone::Parser::LV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'LV',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([2689]\\d)(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Latvia',
  'premiumRate'=>{
                   'exampleNumber'=>'90123456',
                   'nationalNumberPattern'=>'90\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'80\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80123456'
              },
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
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000076/en',
                                 'http://en.wikipedia.org/wiki/+371'
                               ]
                },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'371',
  'internationalPrefix'=>'00',
  'sharedCost'=>{
                  'exampleNumber'=>'81123456',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'nationalNumberPattern'=>'81\\d{6}'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'63123456',
                 'nationalNumberPattern'=>'6\\d{7}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               }
}
;
}

1;
