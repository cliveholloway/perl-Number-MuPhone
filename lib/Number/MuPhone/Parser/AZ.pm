package Number::MuPhone::Parser::AZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Azerbaijan','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200000F/en'},'tollFree'=>{'exampleNumber'=>'881234567','nationalNumberPattern'=>'88\\d{7}','possibleLengths'=>{'national'=>'9'}},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'(?:1[28]|2(?:[45]2|[0-36])|365)','pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})'},{'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'[4-8]','format'=>'$1 $2 $3 $4'},{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'9','nationalPrefixFormattingRule'=>'$NP$FG','format'=>'$1 $2 $3 $4'}]},'nationalPrefixFormattingRule'=>'($NP$FG)','internationalPrefix'=>'00','nationalPrefix'=>'0','CountryCode'=>'AZ','mobile'=>{'exampleNumber'=>'401234567','nationalNumberPattern'=>'(?:36554|(?:4[04]|5[015]|60|7[07])\\d{3})\\d{4}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'exampleNumber'=>'123123456','possibleLengths'=>{'national'=>'9','localOnly'=>'7'},'nationalNumberPattern'=>'(?:1[28]\\d{3}|2(?:02|1[24]|2[2-4]|33|[45]2|6[23])\\d{2}|365(?:[0-46-9]\\d|5[0-35-9]))\\d{4}'},'premiumRate'=>{'nationalNumberPattern'=>'900200\\d{3}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'900200123'},'countryCode'=>'994','generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{8}'}};
}

1;
