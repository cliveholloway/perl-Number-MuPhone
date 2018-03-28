package Number::MuPhone::Parser::SJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'sharedCost'=>{
                  'nationalNumberPattern'=>'810(?:0[0-6]|[2-8]\\d)\\d{3}',
                  'possibleLengths'=>{
                                       'national'=>'8'
                                     },
                  'exampleNumber'=>'81021234'
                },
  'uan'=>{
           'exampleNumber'=>'01234',
           'possibleLengths'=>{
                                'national'=>'5,8'
                              },
           'nationalNumberPattern'=>'0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3}'
         },
  'personalNumber'=>{
                      'exampleNumber'=>'88012345',
                      'nationalNumberPattern'=>'880\\d{5}',
                      'possibleLengths'=>{
                                           'national'=>'8'
                                         }
                    },
  'premiumRate'=>{
                   'nationalNumberPattern'=>'82[09]\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'exampleNumber'=>'82012345'
                 },
  'voip'=>{
            'exampleNumber'=>'85012345',
            'possibleLengths'=>{
                                 'national'=>'8'
                               },
            'nationalNumberPattern'=>'85[0-5]\\d{5}'
          },
  'TerritoryName'=>'Svalbard',
  'voicemail'=>{
                 'exampleNumber'=>'81212345',
                 'nationalNumberPattern'=>'81[23]\\d{5}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'CountryCode'=>'SJ',
  'countryCode'=>'47',
  'internationalPrefix'=>'00',
  'mobile'=>{
              'exampleNumber'=>'41234567',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'nationalNumberPattern'=>'(?:4[015-8]|5[89]|9\\d)\\d{6}'
            },
  'references'=>{
                  'sourceUrl'=>'http://www.npt.no/pt_internet/numsys/E.164.pdf'
                },
  'fixedLine'=>{
                 'exampleNumber'=>'79123456',
                 'nationalNumberPattern'=>'79\\d{6}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    }
               },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'0\\d{4}|[45789]\\d{7}'
                 },
  'tollFree'=>{
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'nationalNumberPattern'=>'80[01]\\d{5}',
                'exampleNumber'=>'80012345'
              },
  'availableFormats'=>{
                          'numberFormat'=>[]
                        }
}
;
}

1;
