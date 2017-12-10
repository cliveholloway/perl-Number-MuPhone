package Number::MuPhone::Parser::TR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/%2B90','http://www.itu.int/oth/T02020000D6/en']},'CountryCode'=>'TR','fixedLine'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'(?:2(?:[13][26]|[28][2468]|[45][268]|[67][246])|3(?:[13][28]|[24-6][2468]|[78][02468]|92)|4(?:[16][246]|[23578][2468]|4[26]))\\d{7}','exampleNumber'=>'2123456789'},'premiumRate'=>{'exampleNumber'=>'9001234567','nationalNumberPattern'=>'900\\d{7}','possibleLengths'=>{'national'=>'10'}},'generalDesc'=>{'nationalNumberPattern'=>'[2-589]\\d{9}|444\\d{4}'},'countryCode'=>'90','availableFormats'=>{'numberFormat'=>[{'nationalPrefixFormattingRule'=>'($NP$FG)','leadingDigits'=>'[23]|4(?:[0-35-9]|4[0-35-9])','nationalPrefixOptionalWhenFormatting'=>'true','pattern'=>'(\\d{3})(\\d{3})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'},{'format'=>'$1 $2 $3 $4','pattern'=>'(\\d{3})(\\d{3})(\\d{2})(\\d{2})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'5[02-69]','nationalPrefixOptionalWhenFormatting'=>'true'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{4})','leadingDigits'=>'51|[89]','nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefixOptionalWhenFormatting'=>'true'},{'leadingDigits'=>'444','pattern'=>'(444)(\\d{1})(\\d{3})','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Turkey','noInternationalDialling'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'444\\d{4}','exampleNumber'=>'4441444'},'tollFree'=>{'exampleNumber'=>'8001234567','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'800\\d{7}'},'mobile'=>{'exampleNumber'=>'5012345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:(?:0[1-7]|22|[34]\\d|5[1-59]|9[246])\\d{2}|6161)\\d{5}'},'internationalPrefix'=>'00','nationalPrefix'=>'0','pager'=>{'exampleNumber'=>'5123456789','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'512\\d{7}'},'uan'=>{'exampleNumber'=>'4441444','possibleLengths'=>{'national'=>'7,10'},'nationalNumberPattern'=>'444\\d{4}|850\\d{7}'}};
}

1;
