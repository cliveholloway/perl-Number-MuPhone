package Number::MuPhone::Parser::NL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/%2B31','http://wetten.overheid.nl/BWBR0010198']},'nationalPrefixFormattingRule'=>'$NP$FG','CountryCode'=>'NL','fixedLine'=>{'exampleNumber'=>'101234567','nationalNumberPattern'=>'(?:1[0135-8]|2[02-69]|3[0-68]|4[0135-9]|[57]\\d|8[478])\\d{7}','possibleLengths'=>{'national'=>'9'}},'premiumRate'=>{'exampleNumber'=>'9061234','nationalNumberPattern'=>'90[069]\\d{4,7}','possibleLengths'=>{'national'=>'[7-10]'}},'countryCode'=>'31','generalDesc'=>{'nationalNumberPattern'=>'1\\d{4,8}|[2-7]\\d{8}|[89]\\d{6,9}'},'TerritoryName'=>'Netherlands','noInternationalDialling'=>{'exampleNumber'=>'14123','possibleLengths'=>{'national'=>'5,6'},'nationalNumberPattern'=>'14\\d{3,4}'},'tollFree'=>{'exampleNumber'=>'8001234','nationalNumberPattern'=>'800\\d{4,7}','possibleLengths'=>{'national'=>'[7-10]'}},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'([1-578]\\d)(\\d{3})(\\d{4})','leadingDigits'=>'1[035]|2[0346]|3[03568]|4[0356]|5[0358]|7|8[4578]','format'=>'$1 $2 $3'},{'leadingDigits'=>'1[16-8]|2[259]|3[124]|4[17-9]|5[124679]','pattern'=>'([1-5]\\d{2})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'format'=>'$1 $2','pattern'=>'(6)(\\d{8})','leadingDigits'=>'6[0-57-9]'},{'format'=>'$1 $2','pattern'=>'(66)(\\d{7})','leadingDigits'=>'66'},{'format'=>'$1 $2','pattern'=>'(14)(\\d{3,4})','leadingDigits'=>'14','nationalPrefixFormattingRule'=>'$FG'},{'leadingDigits'=>'80|9','pattern'=>'([89]0\\d)(\\d{4,7})','format'=>'$1 $2'}]},'voip'=>{'nationalNumberPattern'=>'(?:6760|85\\d{2})\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'851234567'},'internationalPrefix'=>'00','nationalPrefix'=>'0','mobile'=>{'exampleNumber'=>'612345678','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'6[1-58]\\d{7}'},'pager'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'66\\d{7}','exampleNumber'=>'662345678'},'uan'=>{'possibleLengths'=>{'national'=>'5,6'},'nationalNumberPattern'=>'140(?:1(?:[035]|[16-8]\\d)|2(?:[0346]|[259]\\d)|3(?:[03568]|[124]\\d)|4(?:[0356]|[17-9]\\d)|5(?:[0358]|[124679]\\d)|7\\d|8[458])','exampleNumber'=>'14020'}};
}

1;
