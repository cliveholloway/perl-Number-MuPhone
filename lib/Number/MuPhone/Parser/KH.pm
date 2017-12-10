package Number::MuPhone::Parser::KH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'1900(?:1\\d|2[09])\\d{4}','exampleNumber'=>'1900123456'},'generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{7,9}'},'countryCode'=>'855','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'1\\d[1-9]|[2-9]'},{'leadingDigits'=>'1[89]0','pattern'=>'(1[89]00)(\\d{3})(\\d{3})','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Cambodia','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000023/en','http://en.wikipedia.org/wiki/+855']},'tollFree'=>{'exampleNumber'=>'1800123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'1800(?:1\\d|2[019])\\d{4}'},'CountryCode'=>'KH','fixedLine'=>{'nationalNumberPattern'=>'(?:2[3-6]|3[2-6]|4[2-4]|[5-7][2-5])(?:[237-9]|4[56]|5\\d|6\\d?)\\d{5}|23(?:4[234]|8\\d{2})\\d{4}','possibleLengths'=>{'national'=>'8,9','localOnly'=>'6,7'},'exampleNumber'=>'23756789'},'mobile'=>{'possibleLengths'=>{'national'=>'8,9'},'nationalNumberPattern'=>'(?:1(?:[013-79]\\d|[28]\\d{1,2})|2[3-6]48|3(?:[18]\\d{2}|[2-6]48)|4[2-4]48|5[2-5]48|6(?:[016-9]\\d|[2-5]48)|7(?:[07-9]\\d|[16]\\d{2}|[2-5]48)|8(?:[013-79]\\d|8\\d{2})|9(?:6\\d{2}|7\\d{1,2}|[0-589]\\d))\\d{5}','exampleNumber'=>'91234567'},'internationalPrefix'=>'00[14-9]','nationalPrefix'=>'0'};
}

1;
