package Number::MuPhone::Parser::IS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'fixedLine'=>{
                 'exampleNumber'=>'4101234',
                 'nationalNumberPattern'=>'(?:4(?:1[0-24-69]|2[0-7]|[37][0-8]|4[0-245]|5[0-68]|6\\d|8[0-36-8])|5(?:05|[156]\\d|2[02578]|3[0-79]|4[03-7]|7[0-2578]|8[0-35-9]|9[013-689])|87[23])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    }
               },
  'TerritoryName'=>'Iceland',
  'voicemail'=>{
                 'nationalNumberPattern'=>'(?:6(?:2[78]|49|8\\d)|8(?:7[0189]|80)|95[48])\\d{4}',
                 'possibleLengths'=>{
                                      'national'=>'7'
                                    },
                 'exampleNumber'=>'6271234'
               },
  'preferredInternationalPrefix'=>'00',
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.pta.is/default.aspx?cat_id=85',
                                 'http://www.pfs.is/default.aspx?cat_id=14&module_id=210&element_id=4',
                                 'http://www.pfs.is/english/telecom-affairs/numbering/'
                               ]
                },
  'internationalPrefix'=>'1(?:0(?:01|10|20)|100)|00',
  'premiumRate'=>{
                   'exampleNumber'=>'9011234',
                   'nationalNumberPattern'=>'90\\d{5}',
                   'possibleLengths'=>{
                                        'national'=>'7'
                                      }
                 },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'[4-9]\\d{6}|38\\d{7}'
                 },
  'voip'=>{
            'exampleNumber'=>'4921234',
            'nationalNumberPattern'=>'49\\d{5}',
            'possibleLengths'=>{
                                 'national'=>'7'
                               }
          },
  'uan'=>{
           'possibleLengths'=>{
                                'national'=>'7'
                              },
           'nationalNumberPattern'=>'809\\d{4}',
           'exampleNumber'=>'8091234'
         },
  'availableFormats'=>{
                          'numberFormat'=>[
                                              {
                                                'format'=>'$1 $2',
                                                'leadingDigits'=>'[4-9]',
                                                'pattern'=>'(\\d{3})(\\d{4})'
                                              },
                                              {
                                                'format'=>'$1 $2 $3',
                                                'leadingDigits'=>'3',
                                                'pattern'=>'(3\\d{2})(\\d{3})(\\d{3})'
                                              }
                                            ]
                        },
  'mobile'=>{
              'nationalNumberPattern'=>'38[589]\\d{6}|(?:6(?:1[1-8]|2[0-6]|3[027-9]|4[014679]|5[0159]|[67][0-69]|9\\d)|7(?:5[057]|[6-8]\\d)|8(?:2[0-59]|3[0-4]|[469]\\d|5[1-9]|88))\\d{4}',
              'possibleLengths'=>{
                                   'national'=>'7,9'
                                 },
              'exampleNumber'=>'6111234'
            },
  'mobileNumberPortableRegion'=>'true',
  'countryCode'=>'354',
  'CountryCode'=>'IS',
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{4}',
                'possibleLengths'=>{
                                     'national'=>'7'
                                   },
                'exampleNumber'=>'8001234'
              }
}
;
}

1;
