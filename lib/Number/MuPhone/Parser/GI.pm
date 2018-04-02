package Number::MuPhone::Parser::GI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'countryCode'=>'350',
  'fixedLine'=>{
                 'exampleNumber'=>'20012345',
                 'nationalNumberPattern'=>'2(?:00\\d{2}|1(?:6[24-7]\\d|90[0-2])|2(?:2[2457]\\d|50[0-2]))\\d{3}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[256]\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'57123456',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:5[46-8]|62)\\d{6}'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{3})(\\d{5})',
                                                'leadingDigits'=>'2',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'internationalPrefix'=>'00',
  'TerritoryName'=>'Gibraltar',
  'CountryCode'=>'GI',
  'references'=>{
                  'sourceUrl'=>'http://www.gra.gi/communications/numbering-plan'
                }
}
;
}

1;
