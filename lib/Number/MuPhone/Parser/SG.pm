package Number::MuPhone::Parser::SG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'nationalNumberPattern'=>'1?800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10,11'
                                   },
                'exampleNumber'=>'18001234567'
              },
  'internationalPrefix'=>'0[0-3]\\d',
  'premiumRate'=>{
                   'exampleNumber'=>'19001234567',
                   'possibleLengths'=>{
                                        'national'=>'11'
                                      },
                   'nationalNumberPattern'=>'1900\\d{7}'
                 },
  'references'=>{
                  'sourceUrl'=>'http://www.ida.gov.sg/Policies-and-Regulations/Industry-and-Licensees/Numbering/National-Numbering-Plan-and-Allocation-Process.aspx'
                },
  'CountryCode'=>'SG',
  'TerritoryName'=>'Singapore',
  'fixedLine'=>{
                 'exampleNumber'=>'61234567',
                 'nationalNumberPattern'=>'6[1-9]\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'65',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'pattern'=>'([3689]\\d{3})(\\d{4})',
                                                'leadingDigits'=>'[369]|8[1-9]'
                                              },
                                              {
                                                'pattern'=>'(1[89]00)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'1[89]',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(7000)(\\d{4})(\\d{3})',
                                                'leadingDigits'=>'70'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'80',
                                                'pattern'=>'(800)(\\d{3})(\\d{4})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'81234567',
              'nationalNumberPattern'=>'(?:8[1-8]|9[0-8])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[36]\\d{7}|[17-9]\\d{7,10}'
                 },
  'uan'=>{
           'nationalNumberPattern'=>'7000\\d{7}',
           'possibleLengths'=>{
                                'national'=>'11'
                              },
           'exampleNumber'=>'70001234567'
         },
  'voip'=>{
            'nationalNumberPattern'=>'3[12]\\d{6}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'exampleNumber'=>'31234567'
          }
}
;
}

1;
