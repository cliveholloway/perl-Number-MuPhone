package Number::MuPhone::Parser::KP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'countryCode'=>'850',
  'nationalPrefix'=>'0',
  'fixedLine'=>{
                 'exampleNumber'=>'21234567',
                 'nationalNumberPattern'=>'2\\d{7}|85\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'6,7'
                                    }
               },
  'mobile'=>{
              'exampleNumber'=>'1921234567',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'19[123]\\d{7}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{3})(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'1'
                                              },
                                              {
                                                'leadingDigits'=>'2',
                                                'pattern'=>'(\\d)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'8',
                                                'format'=>'$1 $2 $3'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{9}|[28]\\d{7}'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'23821234',
                               'nationalNumberPattern'=>'2(?:[0-24-9]\\d{2}|3(?:[0-79]\\d|8[02-9]))\\d{4}',
                               'possibleLengths'=>{
                                                    'national'=>'8'
                                                  }
                             },
  'internationalPrefix'=>'00|99',
  'references'=>{
                  'sourceUrl'=>'http://en.wikipedia.org/wiki/%2B850'
                },
  'CountryCode'=>'KP',
  'TerritoryName'=>'Korea, Dem. People\'s Rep. of'
}
;
}

1;
