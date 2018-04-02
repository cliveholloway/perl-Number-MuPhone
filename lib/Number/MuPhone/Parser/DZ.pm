package Number::MuPhone::Parser::DZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'80[12]1\\d{5}',
                  'exampleNumber'=>'801123456'
                },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'80[3-689]1\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'808123456'
                 },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000003/en',
                                 'http://www.arpt.dz'
                               ]
                },
  'CountryCode'=>'DZ',
  'TerritoryName'=>'Algeria',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'nationalPrefix'=>'0',
  'countryCode'=>'213',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    },
                 'nationalNumberPattern'=>'(?:1\\d|2[013-79]|3[0-8]|4[0135689])\\d{6}|9619\\d{5}',
                 'exampleNumber'=>'12345678'
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'(?:5[4-6]|7[7-9])\\d{7}|6(?:[569]\\d|7[0-6])\\d{6}',
              'exampleNumber'=>'551234567'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'([1-4]\\d)(\\d{2})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'[1-4]'
                                              },
                                              {
                                                'leadingDigits'=>'[5-8]',
                                                'pattern'=>'([5-8]\\d{2})(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(9\\d)(\\d{3})(\\d{2})(\\d{2})',
                                                'leadingDigits'=>'9'
                                              }
                                            ]
                        },
  'voip'=>{
            'exampleNumber'=>'983123456',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'98[23]\\d{6}'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:[1-4]|[5-9]\\d)\\d{7}'
                 }
}
;
}

1;
