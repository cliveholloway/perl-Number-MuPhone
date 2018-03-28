package Number::MuPhone::Parser::GE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'GE',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[348]',
                                                'format'=>'$1 $2 $3 $4',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'7',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'5',
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$FG'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Georgia',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[34578]\\d{8}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'voip'=>{
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'nationalNumberPattern'=>'706\\d{6}',
            'exampleNumber'=>'706123456'
          },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'706123456',
                               'nationalNumberPattern'=>'706\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  }
                             },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000050/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Georgia_(country)'
                               ]
                },
  'mobile'=>{
              'nationalNumberPattern'=>'5(?:[14]4|5[0157-9]|68|7[0147-9]|9[0-35-9])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'555123456'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'995',
  'mobileNumberPortableRegion'=>'true',
  'fixedLine'=>{
                 'exampleNumber'=>'322123456',
                 'nationalNumberPattern'=>'(?:3(?:[256]\\d|4[124-9]|7[0-4])|4(?:1\\d|2[2-7]|3[1-79]|4[2-8]|7[239]|9[1-7]))\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6',
                                      'national'=>'9'
                                    }
               },
  'nationalPrefix'=>'0'
}
;
}

1;
