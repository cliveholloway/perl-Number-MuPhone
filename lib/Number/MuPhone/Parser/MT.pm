package Number::MuPhone::Parser::MT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'internationalPrefix'=>'00',
  'tollFree'=>{
                'nationalNumberPattern'=>'800[3467]\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'8'
                                   },
                'exampleNumber'=>'80071234'
              },
  'premiumRate'=>{
                   'exampleNumber'=>'50037123',
                   'possibleLengths'=>{
                                        'national'=>'8'
                                      },
                   'nationalNumberPattern'=>'5(?:0(?:0(?:37|43)|6\\d{2}|70\\d|9[0168]\\d)|[12]\\d0[1-5])\\d{3}'
                 },
  'TerritoryName'=>'Malta',
  'CountryCode'=>'MT',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T0202000084/en',
                                 'http://www.mca.org.mt'
                               ]
                },
  'countryCode'=>'356',
  'fixedLine'=>{
                 'nationalNumberPattern'=>'2(?:0(?:1[0-6]|3[1-4]|[69]\\d)|[1-357]\\d{2})\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'8'
                                    },
                 'exampleNumber'=>'21001234'
               },
  'mobileNumberPortableRegion'=>'true',
  'pager'=>{
             'nationalNumberPattern'=>'7117\\d{4}',
             'possibleLengths'=>{
                                  'national'=>'8'
                                },
             'exampleNumber'=>'71171234'
           },
  'voip'=>{
            'exampleNumber'=>'35501234',
            'nationalNumberPattern'=>'3550\\d{4}',
            'possibleLengths'=>{
                                 'national'=>'8'
                               }
          },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'8'
                              },
           'nationalNumberPattern'=>'501\\d{5}',
           'exampleNumber'=>'50112345'
         },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[2357-9]\\d{7}'
                 },
  'mobile'=>{
              'nationalNumberPattern'=>'(?:7(?:210|[79]\\d{2})|9(?:2(?:1[01]|31)|696|8(?:1[1-3]|89|97)|9\\d{2}))\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'8'
                                 },
              'exampleNumber'=>'96961234'
            },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'leadingDigits'=>'',
                                                'pattern'=>'(\\d{4})(\\d{4})',
                                                'format'=>'$1 $2'
                                              }
                                            ]
                        }
}
;
}

1;
