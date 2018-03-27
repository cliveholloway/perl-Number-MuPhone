package Number::MuPhone::Parser::EE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'uan'=>{
           'nationalNumberPattern'=>'1(?:2[01245]|3[0-6]|4[1-489]|5[0-59]|6[1-46-9]|7[0-27-9]|8[189]|9[012])\\d{1,2}',
           'possibleLengths'=>{
                                'national'=>'4,5'
                              },
           'exampleNumber'=>'12123'
         },
  'fixedLine'=>{
                 'exampleNumber'=>'3212345',
                 'nationalNumberPattern'=>'(?:3[23589]|4[3-8]|6\\d|7[1-9]|88)\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'mobile'=>{
              'possibleLengths'=>{
                                   'national'=>'7,8'
                                 },
              'nationalNumberPattern'=>'(?:5\\d|8[1-5])\\d{6}|5(?:[02]\\d{2}|1(?:[0-8]\\d|95)|5[0-478]\\d|64[0-4]|65[1-589])\\d{3}',
              'exampleNumber'=>'51234567'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000043/en',
                                 'http://www.tja.ee/numbering/'
                               ]
                },
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'372',
  'CountryCode'=>'EE',
  'TerritoryName'=>'Estonia',
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([3-79]\\d{2})(\\d{4})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[369]|4[3-8]|5(?:[02]|1(?:[0-8]|95)|5[0-478]|6(?:4[0-4]|5[1-589]))|7[1-9]'
                                              },
                                              {
                                                'pattern'=>'(70)(\\d{2})(\\d{4})',
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'70'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'8000',
                                                'pattern'=>'(8000)(\\d{3})(\\d{3})'
                                              },
                                              {
                                                'pattern'=>'([458]\\d{3})(\\d{3,4})',
                                                'leadingDigits'=>'40|5|8(?:00[1-9]|[1-5])',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'1\\d{3,4}|[3-9]\\d{6,7}|800\\d{6,7}'
                 },
  'tollFree'=>{
                'nationalNumberPattern'=>'800(?:0\\d{3}|1\\d|[2-9])\\d{3}',
                'possibleLengths'=>{
                                     'national'=>'7,8,10'
                                   },
                'exampleNumber'=>'80012345'
              },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:40\\d{2}|900)\\d{4}',
                   'possibleLengths'=>{
                                        'national'=>'7,8'
                                      },
                   'exampleNumber'=>'9001234'
                 },
  'noInternationalDialling'=>{
                               'exampleNumber'=>'8002123',
                               'possibleLengths'=>{
                                                    'national'=>'4,5,7'
                                                  },
                               'nationalNumberPattern'=>'1\\d{3,4}|800[2-9]\\d{3}'
                             },
  'personalNumber'=>{
                      'exampleNumber'=>'70012345',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'70[0-2]\\d{5}'
                    }
}
;
}

1;
