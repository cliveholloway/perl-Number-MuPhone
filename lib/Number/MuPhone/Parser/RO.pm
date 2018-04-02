package Number::MuPhone::Parser::RO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'exampleNumber'=>'372123456',
           'possibleLengths'=>{
                                'national'=>'9'
                              },
           'nationalNumberPattern'=>'37\\d{7}'
         },
  'preferredExtnPrefix'=>' int ',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23]\\d{5,8}|[7-9]\\d{8}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'7(?:[0-8]\\d{2}|99\\d)\\d{5}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'exampleNumber'=>'712345678'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[23]1',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[23]1',
                                                'pattern'=>'(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[23][3-7]|[7-9]'
                                              },
                                              {
                                                'pattern'=>'(2\\d{2})(\\d{3})',
                                                'leadingDigits'=>'2[3-6]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'countryCode'=>'40',
  'mobileNumberPortableRegion'=>'true',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'CountryCode'=>'RO',
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'nationalNumberPattern'=>'800\\d{6}',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   }
              },
  'sharedCost'=>{
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'801\\d{6}',
                  'exampleNumber'=>'801123456'
                },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'211234567',
                 'possibleLengths'=>{
                                      'national'=>'6,9'
                                    },
                 'nationalNumberPattern'=>'2(?:1(?:\\d{7}|9\\d{3})|[3-6](?:\\d{7}|\\d9\\d{2}))|3(?:1\\d{4}(?:\\d{3})?|[3-6]\\d{7})'
               },
  'TerritoryName'=>'Romania',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000AC/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Romania',
                                 'http://www.ancom.org.ro/en/presentation-of-romanian-national-numbering-plan-according-to-itu-t-recommendation-e129-_5523'
                               ]
                },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90[036]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'900123456'
                 }
}
;
}

1;
