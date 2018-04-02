package Number::MuPhone::Parser::SJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'nationalNumberPattern'=>'79\\d{6}',
                 'exampleNumber'=>'79123456'
               },
  'internationalPrefix'=>'00',
  'premiumRate'=>{
                   'nationalNumberPattern'=>'82[09]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'82012345'
                 },
  'voicemail'=>{
                 'nationalNumberPattern'=>'81[23]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'81212345'
               },
  'TerritoryName'=>'Svalbard',
  'references'=>{
                  'sourceUrl'=>'http://www.npt.no/pt_internet/numsys/E.164.pdf'
                },
  'countryCode'=>'47',
  'voip'=>{
            'exampleNumber'=>'85012345',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'85[0-5]\\d{5}'
          },
  'uan'=>{
           'exampleNumber'=>'01234',
           'possibleLengths'=>{
                                'national'=>'5,8'
                              },
           'nationalNumberPattern'=>'0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3}'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'0\\d{4}|[45789]\\d{7}'
                 },
  'mobile'=>{
              'exampleNumber'=>'41234567',
              'nationalNumberPattern'=>'(?:4[015-8]|5[89]|9\\d)\\d{6}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 }
            },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        },
  'personalNumber'=>{
                      'nationalNumberPattern'=>'880\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         },
                      'exampleNumber'=>'88012345'
                    },
  'tollFree'=>{
                'nationalNumberPattern'=>'80[01]\\d{5}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80012345'
              },
  'sharedCost'=>{
                  'exampleNumber'=>'81021234',
                  'nationalNumberPattern'=>'810(?:0[0-6]|[2-8]\\d)\\d{3}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     }
                },
  'CountryCode'=>'SJ'
}
;
}

1;
