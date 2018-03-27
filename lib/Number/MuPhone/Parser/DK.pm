package Number::MuPhone::Parser::DK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:[2-7]\\d|8[126-9]|9[1-36-9])\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'32123456'
               },
  'tollFree'=>{
                'exampleNumber'=>'80123456',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'80\\d{6}'
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
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'DK',
  'TerritoryName'=>'Denmark',
  'internationalPrefix'=>'00',
  'countryCode'=>'45',
  'mobileNumberPortableRegion'=>'true',
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:[2-7]\\d|8[126-9]|9[1-36-9])\\d{6}',
              'exampleNumber'=>'20123456'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.dba.erhvervsstyrelsen.dk/numbering-lists'
                }
}
;
}

1;
