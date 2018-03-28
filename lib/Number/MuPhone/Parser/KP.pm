package Number::MuPhone::Parser::KP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'850',
  'internationalPrefix'=>'00|99',
  'references'=>{
                  'sourceUrl'=>'http://en.wikipedia.org/wiki/%2B850'
                },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobile'=>{
              'nationalNumberPattern'=>'19[123]\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'exampleNumber'=>'1921234567'
            },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'2(?:[0-24-9]\\d{2}|3(?:[0-79]\\d|8[02-9]))\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  },
                               'exampleNumber'=>'23821234'
                             },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{9}|[28]\\d{7}'
                 },
  'TerritoryName'=>'Korea, Dem. People\'s Rep. of',
  'CountryCode'=>'KP',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'1'
                                              },
                                              {
                                                'leadingDigits'=>'2',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'8',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2\\d{7}|85\\d{6}',
                 'possibleLengths'=>{
                                      'localOnly'=>'6,7',
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21234567'
               }
}
;
}

1;
