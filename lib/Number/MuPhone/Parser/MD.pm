package Number::MuPhone::Parser::MD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'CountryCode'=>'MD',
  'TerritoryName'=>'Moldova, Rep. of',
  'premiumRate'=>{
                   'exampleNumber'=>'90012345',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'90[056]\\d{5}'
                 },
  'voip'=>{
            'exampleNumber'=>'30123456',
            'nationalNumberPattern'=>'3[08]\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200008C/en',
                                 'http://anrceti.md/fileupload/58',
                                 'http://en.anrceti.md/resurse_numerotare_tel_mobila'
                               ]
                },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:562|6\\d{2}|7(?:[189]\\d|6[07]|7[457-9]))\\d{5}',
              'exampleNumber'=>'62112345'
            },
  'countryCode'=>'373',
  'mobileNumberPortableRegion'=>'true',
  'internationalPrefix'=>'00',
  'sharedCost'=>{
                  'nationalNumberPattern'=>'808\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'80812345'
                },
  'uan'=>{
           'nationalNumberPattern'=>'803\\d{5}',
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'exampleNumber'=>'80312345'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'22|3',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'leadingDigits'=>'2[13-9]|[5-7]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'([25-7]\\d{2})(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'([89]\\d{2})(\\d{5})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[89]'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[235-9]\\d{7}'
                 },
  'tollFree'=>{
                'exampleNumber'=>'80012345',
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   }
              },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'fixedLine'=>{
                 'exampleNumber'=>'22212345',
                 'nationalNumberPattern'=>'(?:2[1-9]\\d|3[1-79]\\d|5(?:33|5[257]))\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'nationalPrefix'=>'0'
}
;
}

1;
