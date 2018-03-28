package Number::MuPhone::Parser::PW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'2771234',
                 'nationalNumberPattern'=>'2552255|(?:277|345|488|5(?:35|44|87)|6(?:22|54|79)|7(?:33|47)|8(?:24|55|76))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:6[234689]0|77[45789])\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7'
                                 },
              'exampleNumber'=>'6201234'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T02020000A2/en'
                },
  'countryCode'=>'680',
  'internationalPrefix'=>'01[12]',
  'CountryCode'=>'PW',
  'TerritoryName'=>'Palau',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-8]\\d{6}'
                 }
}
;
}

1;
