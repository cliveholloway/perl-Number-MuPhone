package Number::MuPhone::Parser::RS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'[6-12]'
                                   },
                'nationalNumberPattern'=>'800\\d{3,9}',
                'exampleNumber'=>'80012345'
              },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[126-9]\\d{4,11}|3(?:[0-79]\\d{3,10}|8[2-9]\\d{2,9})'
                 },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'(?:90[0169]|78\\d)\\d{3,7}',
                   'possibleLengths'=>{
                                        'national'=>'[6-12]'
                                      },
                   'exampleNumber'=>'90012345'
                 },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'pattern'=>'([23]\\d{2})(\\d{4,9})',
                                                'leadingDigits'=>'(?:2[389]|39)0',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'1|2(?:[0-24-7]|[389][1-9])|3(?:[0-8]|9[1-9])',
                                                'pattern'=>'([1-3]\\d)(\\d{5,10})'
                                              },
                                              {
                                                'pattern'=>'(6\\d)(\\d{6,8})',
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'6'
                                              },
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[89]',
                                                'pattern'=>'([89]\\d{2})(\\d{3,9})'
                                              },
                                              {
                                                'pattern'=>'(7[26])(\\d{4,9})',
                                                'leadingDigits'=>'7[26]',
                                                'format'=>'$1 $2'
                                              },
                                              {
                                                'leadingDigits'=>'7[08]',
                                                'format'=>'$1 $2',
                                                'pattern'=>'(7[08]\\d)(\\d{4,9})'
                                              }
                                            ]
                        },
  'CountryCode'=>'RS',
  'TerritoryName'=>'Serbia',
  'internationalPrefix'=>'00',
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'381',
  'nationalPrefixFormattingRule'=>'$NP$FG',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T02020000B9/en',
                                 'http://registar.ratel.rs/en/reg202'
                               ]
                },
  'mobile'=>{
              'exampleNumber'=>'601234567',
              'nationalNumberPattern'=>'6(?:[0-689]|7\\d)\\d{6,7}',
              'possibleLengths'=>{
                                   'national'=>'[8-10]'
                                 }
            },
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'localOnly'=>'5,6',
                                      'national'=>'[7-12]'
                                    },
                 'nationalNumberPattern'=>'(?:1(?:[02-9][2-9]|1[1-9])\\d|2(?:[0-24-7][2-9]\\d|[389](?:0[2-9]|[2-9]\\d))|3(?:[0-8][2-9]\\d|9(?:[2-9]\\d|0[2-9])))\\d{3,8}',
                 'exampleNumber'=>'10234567'
               },
  'uan'=>{
           'exampleNumber'=>'700123456',
           'nationalNumberPattern'=>'7[06]\\d{4,10}',
           'possibleLengths'=>{
                                'national'=>'[6-12]'
                              }
         },
  'nationalPrefix'=>'0'
}
;
}

1;
