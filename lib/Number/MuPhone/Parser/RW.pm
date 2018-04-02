package Number::MuPhone::Parser::RW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.rura.gov.rw/docs/RWANDA_NATIONAL_NUMBERING_PLAN.pdf',
                                 'http://en.wikipedia.org/wiki/+250'
                               ]
                },
  'CountryCode'=>'RW',
  'TerritoryName'=>'Rwanda',
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'exampleNumber'=>'900123456',
                   'nationalNumberPattern'=>'900\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      }
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}',
                'exampleNumber'=>'800123456'
              },
  'mobile'=>{
              'exampleNumber'=>'720123456',
              'nationalNumberPattern'=>'7[238]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'nationalPrefixFormattingRule'=>'$FG',
                                                'pattern'=>'(2\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'2',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'[7-9]',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'([7-9]\\d{2})(\\d{3})(\\d{3})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(0\\d)(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[027-9]\\d{7,8}'
                 },
  'nationalPrefix'=>'0',
  'countryCode'=>'250',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2[258]\\d{7}|06\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    },
                 'exampleNumber'=>'250123456'
               }
}
;
}

1;
