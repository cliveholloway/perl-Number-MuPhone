package Number::MuPhone::Parser::KZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {
  'nationalPrefix'=>'8',
  'fixedLine'=>{
                 'possibleLengths'=>{
                                      'national'=>'10'
                                    },
                 'nationalNumberPattern'=>'33622\\d{5}|7(?:1(?:0(?:[23]\\d|4[0-3]|59|63)|1(?:[23]\\d|4[0-79]|59)|2(?:[23]\\d|59)|3(?:2\\d|3[0-79]|4[0-35-9]|59)|4(?:[24]\\d|3[013-9]|5[1-9])|5(?:2\\d|3[1-9]|4[0-7]|59)|6(?:[234]\\d|5[19]|61)|72\\d|8(?:[27]\\d|3[1-46-9]|4[0-5]))|2(?:1(?:[23]\\d|4[46-9]|5[3469])|2(?:2\\d|3[0679]|46|5[12679])|3(?:[234]\\d|5[139])|4(?:2\\d|3[1235-9]|59)|5(?:[23]\\d|4[01246-8]|59|61)|6(?:2\\d|3[1-9]|4[0-4]|59)|7(?:[2379]\\d|40|5[279])|8(?:[23]\\d|4[0-3]|59)|9(?:2\\d|3[124578]|59)))\\d{5}',
                 'exampleNumber'=>'7123456789'
               },
  'internationalPrefix'=>'810',
  'countryCode'=>'7',
  'mobile'=>{
              'exampleNumber'=>'7710009998',
              'possibleLengths'=>{
                                   'national'=>'10'
                                 },
              'nationalNumberPattern'=>'7(?:0[012578]|47|6[02-4]|7[15-8]|85)\\d{7}'
            },
  'references'=>{
                  'sourceUrl'=>[
                                 'http://www.itu.int/oth/T020200006F/en',
                                 'https://telecom.kz/en/catalog/kazahstan.171777/5'
                               ]
                },
  'generalDesc'=>{
                   'nationalNumberPattern'=>'(?:33\\d|7\\d{2}|80[09])\\d{7}'
                 },
  'voip'=>{
            'exampleNumber'=>'7511234567',
            'possibleLengths'=>{
                                 'national'=>'10'
                               },
            'nationalNumberPattern'=>'751\\d{7}'
          },
  'tollFree'=>{
                'nationalNumberPattern'=>'800\\d{7}',
                'possibleLengths'=>{
                                     'national'=>'10'
                                   },
                'exampleNumber'=>'8001234567'
              },
  'noInternationalDialling'=>{
                               'nationalNumberPattern'=>'751\\d{7}',
                               'possibleLengths'=>{
                                                    'national'=>'10'
                                                  },
                               'exampleNumber'=>'7511234567'
                             },
  'premiumRate'=>{
                   'possibleLengths'=>{
                                        'national'=>'10'
                                      },
                   'nationalNumberPattern'=>'809\\d{7}',
                   'exampleNumber'=>'8091234567'
                 },
  'preferredInternationalPrefix'=>'8~10',
  'TerritoryName'=>'Kazakhstan',
  'CountryCode'=>'KZ',
  'availableFormats'=>{
                          'numberFormat'=>[]
                        }
}
;
}

1;
