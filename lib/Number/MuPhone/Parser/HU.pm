package Number::MuPhone::Parser::HU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'exampleNumber'=>'381234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'38\\d{7}'},'internationalPrefix'=>'00','nationalPrefix'=>'06','voip'=>{'exampleNumber'=>'211234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'21\\d{7}'},'mobile'=>{'exampleNumber'=>'201234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:[257]0|3[01])\\d{7}'},'TerritoryName'=>'Hungary','noInternationalDialling'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[48]0\\d{6}','exampleNumber'=>'80123456'},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[48]0\\d{6}','exampleNumber'=>'80123456'},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(1)(\\d{3})(\\d{4})','leadingDigits'=>'1','format'=>'$1 $2 $3'},{'leadingDigits'=>'[2-9]','pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})','format'=>'$1 $2 $3'}]},'countryCode'=>'36','generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{7,8}'},'premiumRate'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'9[01]\\d{6}','exampleNumber'=>'90123456'},'nationalPrefixFormattingRule'=>'($FG)','CountryCode'=>'HU','fixedLine'=>{'exampleNumber'=>'12345678','possibleLengths'=>{'national'=>'8','localOnly'=>'6'},'nationalNumberPattern'=>'(?:1\\d|2[2-9]|3[2-7]|4[24-9]|5[2-79]|6[23689]|7[2-9]|8[2-57-9]|9[2-69])\\d{6}'},'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000061/en'}};
}

1;
