package Number::MuPhone::Parser::MY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>[
                                 'http://en.wikipedia.org/wiki/%2B60',
                                 'http://www.skmm.gov.my'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'9,10'
                                 },
              'nationalNumberPattern'=>'1(?:1[1-5]\\d{2}|[02-4679][2-9]\\d|59\\d{2}|8(?:1[23]|[2-9]\\d))\\d{5}',
              'exampleNumber'=>'123456789'
            },
  'internationalPrefix'=>'00',
  'countryCode'=>'60',
  'mobileNumberPortableRegion'=>'true',
  'CountryCode'=>'MY',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([4-79])(\\d{3})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'[4-79]'
                                              },
                                              {
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'3',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(3)(\\d{4})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'1[02-46-9][1-9]|8',
                                                'pattern'=>'([18]\\d)(\\d{3})(\\d{3,4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG'
                                              },
                                              {
                                                'pattern'=>'(1)([36-8]00)(\\d{2})(\\d{4})',
                                                'format'=>'$1-$2-$3-$4',
                                                'leadingDigits'=>'1[36-8]0'
                                              },
                                              {
                                                'pattern'=>'(11)(\\d{4})(\\d{4})',
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'11'
                                              },
                                              {
                                                'nationalPrefixFormattingRule'=>'$NP$FG',
                                                'pattern'=>'(15[49])(\\d{3})(\\d{4})',
                                                'format'=>'$1-$2 $3',
                                                'leadingDigits'=>'15'
                                              }
                                            ]
                        },
  'TerritoryName'=>'Malaysia',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[13-9]\\d{7,9}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'nationalNumberPattern'=>'1[378]00\\d{6}',
                'exampleNumber'=>'1300123456'
              },
  'voip'=>{
            'nationalNumberPattern'=>'154\\d{7}',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'exampleNumber'=>'1541234567'
          },
  'premiumRate'=>{
                   'exampleNumber'=>'1600123456',
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'1600\\d{6}'
                 },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:3[2-9]\\d|[4-9][2-9])\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8,9'
                                    },
                 'exampleNumber'=>'323456789'
               }
}
;
}

1;
