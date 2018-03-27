package Number::MuPhone::Parser::RO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'[23]1',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'leadingDigits'=>'[23]1',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(\\d{2})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'[23][3-7]|[7-9]',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'2[3-6]',
                                                'pattern'=>'(2\\d{2})(\\d{3})'
                                              }
                                            ]
                        },
  'tollFree'=>{
                'exampleNumber'=>'800123456',
                'possibleLengths'=>{
                                     'national'=>'9'
                                   },
                'nationalNumberPattern'=>'800\\d{6}'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[23]\\d{5,8}|[7-9]\\d{8}'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'211234567',
                 'nationalNumberPattern'=>'2(?:1(?:\\d{7}|9\\d{3})|[3-6](?:\\d{7}|\\d9\\d{2}))|3(?:1\\d{4}(?:\\d{3})?|[3-6]\\d{7})',
                 'possibleLengths'=>{
                                      'national'=>'6,9'
                                    }
               },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000AC/en',
                                 'http://en.wikipedia.org/wiki/Telephone_numbers_in_Romania',
                                 'http://www.ancom.org.ro/en/presentation-of-romanian-national-numbering-plan-according-to-itu-t-recommendation-e129-_5523'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9'
                                 },
              'nationalNumberPattern'=>'7(?:[0-8]\\d{2}|99\\d)\\d{5}',
              'exampleNumber'=>'712345678'
            },
  'countryCode'=>'40',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'CountryCode'=>'RO',
  'TerritoryName'=>'Romania',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'90[036]\\d{6}',
                   'possibleLengths'=>{
                                        'national'=>'9'
                                      },
                   'exampleNumber'=>'900123456'
                 },
  'uan'=>{
           'exampleNumber'=>'372123456',
           'nationalNumberPattern'=>'37\\d{7}',
           'possibleLengths'=>{
                                'national'=>'9'
                              }
         },
  'preferredExtnPrefix'=>' int ',
  'sharedCost'=>{
                  'exampleNumber'=>'801123456',
                  'possibleLengths'=>{
                                       'national'=>'9'
                                     },
                  'nationalNumberPattern'=>'801\\d{6}'
                }
}
;
}

1;
