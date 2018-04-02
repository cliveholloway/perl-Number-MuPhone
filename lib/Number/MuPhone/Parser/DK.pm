package Number::MuPhone::Parser::DK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'45',
  'fixedLine'=>{
                 'exampleNumber'=>'32123456',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'(?:[2-7]\\d|8[126-9]|9[1-36-9])\\d{6}'
               },
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'nationalNumberPattern'=>'(?:[2-7]\\d|8[126-9]|9[1-36-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'20123456'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-9]\\d{7}'
                 },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'90123456'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'80\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80123456'
              },
  'internationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>'http://www.dba.erhvervsstyrelsen.dk/numbering-lists'
                },
  'CountryCode'=>'DK',
  'TerritoryName'=>'Denmark'
}
;
}

1;
