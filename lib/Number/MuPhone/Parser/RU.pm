package Number::MuPhone::Parser::RU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000AD/en','http://en.wikipedia.org/wiki/%2B7']},'nationalPrefixFormattingRule'=>'$NP ($FG)','fixedLine'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'(?:3(?:0[12]|4[1-35-79]|5[1-3]|65|8[1-58]|9[0145])|4(?:01|1[1356]|2[13467]|7[1-5]|8[1-7]|9[1-689])|8(?:1[1-8]|2[01]|3[13-6]|4[0-8]|5[15]|6[1-35-79]|7[1-37-9]))\\d{7}','exampleNumber'=>'3011234567'},'CountryCode'=>'RU','premiumRate'=>{'nationalNumberPattern'=>'80[39]\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8091234567'},'preferredInternationalPrefix'=>'8~10','countryCode'=>'7','generalDesc'=>{'nationalNumberPattern'=>'[3489]\\d{9}'},'tollFree'=>{'exampleNumber'=>'8001234567','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'80[04]\\d{7}'},'TerritoryName'=>'Russian Federation','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})','intlFormat'=>'NA','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'[1-79]','format'=>'$1-$2-$3'},{'leadingDigits'=>'[34689]','pattern'=>'([3489]\\d{2})(\\d{3})(\\d{2})(\\d{2})','format'=>'$1 $2-$3-$4'},{'pattern'=>'(7\\d{2})(\\d{3})(\\d{4})','leadingDigits'=>'7','format'=>'$1 $2 $3'}]},'nationalPrefix'=>'8','internationalPrefix'=>'810','mobile'=>{'nationalNumberPattern'=>'9\\d{9}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9123456789'},'mainCountryForCode'=>'true','nationalPrefixOptionalWhenFormatting'=>'true'};
}

1;
