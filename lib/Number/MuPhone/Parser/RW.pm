package Number::MuPhone::Parser::RW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'250123456',
                 'possibleLengths'=>{
                                      'national'=>'8,9'
                                    },
                 'nationalNumberPattern'=>'2[258]\\d{7}|06\\d{6}'
               },
  'countryCode'=>'250',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'nationalNumberPattern'=>'7[238]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'720123456'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.rura.gov.rw/docs/RWANDA_NATIONAL_NUMBERING_PLAN.pdf',
                                 'http://en.wikipedia.org/wiki/+250'
                               ]
                },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'900\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'900123456'
                 },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[027-9]\\d{7,8}'
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
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'([7-9]\\d{2})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'(0\\d)(\\d{2})(\\d{2})(\\d{2})',
                                                'format'=>'$1 $2 $3 $4',
                                                'leadingDigits'=>''
                                              }
                                            ]
                        },
  'CountryCode'=>'RW',
  'TerritoryName'=>'Rwanda'
}
;
}

1;
