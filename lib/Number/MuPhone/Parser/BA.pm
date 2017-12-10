package Number::MuPhone::Parser::BA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'nationalNumberPattern'=>'70[23]\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'70223456'},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'8[08]\\d{6}','exampleNumber'=>'80123456'},'TerritoryName'=>'Bosnia and Herzegovina','sharedCost'=>{'exampleNumber'=>'82123456','nationalNumberPattern'=>'8[12]\\d{6}','possibleLengths'=>{'national'=>'8'}},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2-$3','pattern'=>'(\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'[3-5]'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'6[1-356]|[7-9]'},{'leadingDigits'=>'6[047]','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{3})','format'=>'$1 $2 $3 $4'}]},'nationalPrefix'=>'0','internationalPrefix'=>'00','mobile'=>{'nationalNumberPattern'=>'6(?:0(?:3\\d|40)|[1-356]\\d|44[0-6]|71[137])\\d{5}','possibleLengths'=>{'national'=>'8,9'},'exampleNumber'=>'61123456'},'premiumRate'=>{'nationalNumberPattern'=>'9[0246]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'90123456'},'countryCode'=>'387','generalDesc'=>{'nationalNumberPattern'=>'[3-9]\\d{7,8}'},'references'=>{'sourceUrl'=>['http://www.rak.ba/eng/index.php?uid=1272016657','http://en.wikipedia.org/wiki/+387']},'mobileNumberPortableRegion'=>'true','nationalPrefixFormattingRule'=>'$NP$FG','fixedLine'=>{'exampleNumber'=>'30123456','nationalNumberPattern'=>'(?:[35]\\d|49)\\d{6}','possibleLengths'=>{'localOnly'=>'6','national'=>'8'}},'CountryCode'=>'BA'};
}

1;
