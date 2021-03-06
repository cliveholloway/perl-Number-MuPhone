package Number::MuPhone::Parser::SN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[379]',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'leadingDigits'=>'8',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:[06-8]\\d|21|90)\\d{6}',
              'exampleNumber'=>'701234567'
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3789]\\d{8}'
                 },
  'voip'=>{
            'exampleNumber'=>'933301234',
            'nationalNumberPattern'=>'39[01]\\d{6}|3392\\d{5}|93330\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'fixedLine'=>{
                 'exampleNumber'=>'301012345',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    },
                 'nationalNumberPattern'=>'3(?:0(?:1[0-2]|80)|282|3(?:8[1-9]|9[3-9])|611)\\d{5}'
               },
  'countryCode'=>'221',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000B8/en',
                                 'http://www.artpsenegal.net/index.php?option=com_content&view=article&id=50'
                               ]
                },
  'CountryCode'=>'SN',
  'TerritoryName'=>'Senegal',
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'81[02468]\\d{6}',
                  'exampleNumber'=>'810123456'
                },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}',
                'exampleNumber'=>'800123456'
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'884123456',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'88[4689]\\d{6}'
                 }
}
;
}

1;
