package Number::MuPhone::Parser::FR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'80[6-9]\\d{6}','exampleNumber'=>'806123456'},'sharedCost'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'8(?:1[0-29]|2[0156]|84|90)\\d{6}','exampleNumber'=>'810123456'},'TerritoryName'=>'France','tollFree'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'80[0-5]\\d{6}','exampleNumber'=>'801234567'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4 $5','pattern'=>'([1-79])(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'[1-79]'},{'nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'11','pattern'=>'(1\\d{2})(\\d{3})','intlFormat'=>'NA','format'=>'$1 $2'},{'leadingDigits'=>'8','nationalPrefixFormattingRule'=>'$NP $FG','pattern'=>'(8\\d{2})(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'}]},'internationalPrefix'=>'00','nationalPrefix'=>'0','voip'=>{'nationalNumberPattern'=>'9\\d{8}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'912345678'},'mobile'=>{'exampleNumber'=>'612345678','nationalNumberPattern'=>'(?:6\\d|7[3-9])\\d{7}','possibleLengths'=>{'national'=>'9'}},'premiumRate'=>{'exampleNumber'=>'891123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'89[1-37-9]\\d{6}'},'countryCode'=>'33','generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{8}'},'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200004A/en','http://www.arcep.fr/index.php?id=8146','http://en.wikipedia.org/wiki/%2B33']},'nationalPrefixFormattingRule'=>'$NP$FG','CountryCode'=>'FR','fixedLine'=>{'exampleNumber'=>'123456789','nationalNumberPattern'=>'[1-5]\\d{8}','possibleLengths'=>{'national'=>'9'}}};
}

1;
