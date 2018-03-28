package Number::MuPhone::Parser::SN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'exampleNumber'=>'810123456',
                  'nationalNumberPattern'=>'81[02468]\\d{6}',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     }
                },
  'fixedLine'=>{
                 'exampleNumber'=>'301012345',
                 'nationalNumberPattern'=>'3(?:0(?:1[0-2]|80)|282|3(?:8[1-9]|9[3-9])|611)\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'9'
                                    }
               },
  'CountryCode'=>'SN',
  'TerritoryName'=>'Senegal',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[379]',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'8',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'nationalNumberPattern'=>'88[4689]\\d{6}',
                   'exampleNumber'=>'884123456'
                 },
  'voip'=>{
            'exampleNumber'=>'933301234',
            'nationalNumberPattern'=>'39[01]\\d{6}|3392\\d{5}|93330\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               }
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3789]\\d{8}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:[06-8]\\d|21|90)\\d{6}',
              'exampleNumber'=>'701234567'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000B8/en',
                                 'http://www.artpsenegal.net/index.php?option=com_content&view=article&id=50'
                               ]
                },
  'countryCode'=>'221',
  'internationalPrefix'=>'00'
}
;
}

1;
