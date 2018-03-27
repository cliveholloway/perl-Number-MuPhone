package Number::MuPhone::Parser::LT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'8',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'(?:3[1478]|4[124-6]|52)\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'31234567'
               },
  'nationalPrefixFormattingRule'=>'($NP-$FG)',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([34]\\d)(\\d{6})',
                                                'leadingDigits'=>'37|4(?:1|5[45]|6[2-4])',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'pattern'=>'([3-6]\\d{2})(\\d{5})',
                                                'leadingDigits'=>'3[148]|4(?:[24]|6[09])|528|6',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'[7-9]',
                                                'format'=>'$1 $2 $3',
                                                'nationalPrefixFormattingRule'=>'$NP $FG',
                                                'pattern'=>'([7-9]\\d{2})(\\d{2})(\\d{3})'
                                              },
                                              {
                                                'leadingDigits'=>'52[0-79]',
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(5)(2\\d{2})(\\d{4})'
                                              }
                                            ]
                        },
  'nationalPrefixForParsing'=>'[08]',
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[3-9]\\d{7}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'uan'=>{
           'nationalNumberPattern'=>'70[67]\\d{5}',
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'exampleNumber'=>'70712345'
         },
  'sharedCost'=>{
                  'nationalNumberPattern'=>'808\\d{5}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'80812345'
                },
  'mobile'=>{
              'nationalNumberPattern'=>'6\\d{7}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'61234567'
            },
  'nationalPrefixOptionalWhenFormatting'=>'true',
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T020200007C/en'
                },
  'internationalPrefix'=>'00',
  'countryCode'=>'370',
  'mobileNumberPortableRegion'=>'true',
  'CountryCode'=>'LT',
  'TerritoryName'=>'Lithuania',
  'premiumRate'=>{
                   'exampleNumber'=>'90012345',
                   'nationalNumberPattern'=>'9(?:0[0239]|10)\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      }
                 },
  'personalNumber'=>{
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'700\\d{5}',
                      'exampleNumber'=>'70012345'
                    }
}
;
}

1;
