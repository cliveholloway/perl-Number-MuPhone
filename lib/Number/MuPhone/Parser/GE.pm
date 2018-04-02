package Number::MuPhone::Parser::GE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'mobile'=>{
              'exampleNumber'=>'555123456',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'5(?:[14]4|5[0157-9]|68|7[0147-9]|9[0-35-9])\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'leadingDigits'=>'[348]',
                                                'format'=>'$1 $2 $3 $4'
                                              },
                                              {
                                                'leadingDigits'=>'7',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3 $4',
                                                'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})',
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'leadingDigits'=>'5'
                                              }
                                            ]
                        },
  'voip'=>{
            'nationalNumberPattern'=>'706\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'9'
                               },
            'exampleNumber'=>'706123456'
          },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[34578]\\d{8}'
                 },
  'nationalPrefix'=>'0',
  'countryCode'=>'995',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'9',
                                      'localOnly'=>'6'
                                    },
                 'nationalNumberPattern'=>'(?:3(?:[256]\\d|4[124-9]|7[0-4])|4(?:1\\d|2[2-7]|3[1-79]|4[2-8]|7[239]|9[1-7]))\\d{6}',
                 'exampleNumber'=>'322123456'
               },
  'mobileNumberPortableRegion'=>'true',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000050/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Georgia_(country)'
                               ]
                },
  'CountryCode'=>'GE',
  'TerritoryName'=>'Georgia',
  'noInternationalDialling'=>{
                               'exampleNumber'=>'706123456',
                               'nationalNumberPattern'=>'706\\d{6}',
                               'possibleLengths'=>{
                                                    'national'=>'9'
                                                  }
                             },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}'
              },
  'internationalPrefix'=>'00'
}
;
}

1;
