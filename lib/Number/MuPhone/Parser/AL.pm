package Number::MuPhone::Parser::AL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'references'=>{
                  'sourceUrl'=>'http://www.itu.int/oth/T0202000002/en'
                },
  'TerritoryName'=>'Albania',
  'premiumRate'=>{
                   'exampleNumber'=>'900123',
                   'possibleLengths'=>{
                                        'national'=>'6'
                                      },
                   'nationalNumberPattern'=>'900[1-9]\\d{2}'
                 },
  'internationalPrefix'=>'00',
  'fixedLine'=>{
                 'exampleNumber'=>'22345678',
                 'nationalNumberPattern'=>'(?:2(?:1(?:0[2-9]|[1-9]\\d)|[247]\\d{2}|[35][2-9]\\d|[68](?:0[2-9]|[1-9]\\d)|9(?:[089][2-9]|[1-7]\\d))|3(?:1(?:[04-9][2-9]|[1-3]\\d)|[2-6]\\d{2}|[79](?:[09][2-9]|[1-8]\\d)|8(?:0[2-9]|[1-9]\\d))|4\\d{3}|5(?:1(?:[05-9][2-9]|[1-4]\\d)|[2-578]\\d{2}|6(?:[06-9][2-9]|[1-5]\\d)|9(?:[089][2-9]|[1-7]\\d))|8(?:[19](?:[06-9][2-9]|[1-5]\\d)|[2-6]\\d{2}|[78](?:[089][2-9]|[1-7]\\d)))\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8',
                                      'localOnly'=>'[5-7]'
                                    }
               },
  'nationalPrefix'=>'0',
  'CountryCode'=>'AL',
  'sharedCost'=>{
                  'exampleNumber'=>'808123',
                  'nationalNumberPattern'=>'808[1-9]\\d{2}',
                  'possibleLengths'=>{
                                       'national'=>'6'
                                     }
                },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8001234'
              },
  'personalNumber'=>{
                      'exampleNumber'=>'70021234',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'nationalNumberPattern'=>'700[2-9]\\d{4}'
                    },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'4[0-6]',
                                                'pattern'=>'(4)(\\d{3})(\\d{4})',
                                                'format'=>'$1 $2 $3'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(6\\d)(\\d{3})(\\d{4})',
                                                'leadingDigits'=>'6'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'pattern'=>'(\\d{2})(\\d{3})(\\d{3})',
                                                'leadingDigits'=>'[2358][2-5]|4[7-9]'
                                              },
                                              {
                                                'pattern'=>'(\\d{3})(\\d{3,5})',
                                                'leadingDigits'=>'[235][16-9]|8[016-9]|[79]',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        },
  'mobile'=>{
              'exampleNumber'=>'662123456',
              'nationalNumberPattern'=>'6(?:[689][2-9]|7[2-6])\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'9'
                                 }
            },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2-57]\\d{7}|6\\d{8}|8\\d{5,7}|9\\d{5}'
                 },
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'355'
}
;
}

1;
