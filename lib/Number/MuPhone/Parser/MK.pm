package Number::MuPhone::Parser::MK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','CountryCode'=>'MK','mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'7(?:[0-25-8]\\d{2}|32\\d|421|9[23]\\d)\\d{4}','exampleNumber'=>'72345678'},'fixedLine'=>{'possibleLengths'=>{'national'=>'8','localOnly'=>'6,7'},'nationalNumberPattern'=>'(?:2(?:[23]\\d|5[124578]|6[01])|3(?:1[3-6]|[23][2-6]|4[2356])|4(?:[23][2-6]|4[3-6]|5[256]|6[25-8]|7[24-6]|8[4-6]))\\d{5}','exampleNumber'=>'22212345'},'TerritoryName'=>'Macedonia, Former Yugoslav Rep. of','mobileNumberPortableRegion'=>'true','sharedCost'=>{'exampleNumber'=>'80123456','nationalNumberPattern'=>'8(?:0[1-9]|[1-9]\\d)\\d{5}','possibleLengths'=>{'national'=>'8'}},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000CE/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'800\\d{5}','exampleNumber'=>'80012345'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(2)(\\d{3})(\\d{4})','leadingDigits'=>'2'},{'format'=>'$1 $2 $3','pattern'=>'([347]\\d)(\\d{3})(\\d{3})','leadingDigits'=>'[347]'},{'format'=>'$1 $2 $3 $4','pattern'=>'([58]\\d{2})(\\d)(\\d{2})(\\d{2})','leadingDigits'=>'[58]'}]},'countryCode'=>'389','generalDesc'=>{'nationalNumberPattern'=>'[2-578]\\d{7}'},'premiumRate'=>{'nationalNumberPattern'=>'5[02-9]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'50012345'}};
}

1;
