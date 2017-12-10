package Number::MuPhone::Parser::KE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefixForParsing'=>'005|0','premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'900[02-9]\\d{5}','exampleNumber'=>'900223456'},'generalDesc'=>{'nationalNumberPattern'=>'20\\d{6,7}|[4-9]\\d{6,9}'},'countryCode'=>'254','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{5,7})','leadingDigits'=>'[24-6]','format'=>'$1 $2'},{'format'=>'$1 $2','pattern'=>'(\\d{3})(\\d{6})','leadingDigits'=>'7'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{3,4})','leadingDigits'=>'[89]'}]},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Kenya','tollFree'=>{'exampleNumber'=>'800223456','possibleLengths'=>{'national'=>'9,10'},'nationalNumberPattern'=>'800[24-8]\\d{5,6}'},'references'=>{'sourceUrl'=>['http://www.ca.go.ke/index.php/numbering','https://www.itu.int/oth/T0202000070/en','http://en.wikipedia.org/wiki/+254']},'CountryCode'=>'KE','fixedLine'=>{'nationalNumberPattern'=>'20\\d{6,7}|4(?:0\\d{6,7}|[136]\\d{7}|[245]\\d{5,7})|5(?:[08]\\d{7}|[1-79]\\d{5,7})|6(?:[01457-9]\\d{5,7}|2\\d{7}|6\\d{6,7})','possibleLengths'=>{'national'=>'[7-9]'},'exampleNumber'=>'202012345'},'mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'7(?:[0-3679]\\d|4[0-4679]|5[0-6]|8[0-25-9])\\d{6}','exampleNumber'=>'712123456'},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'000'};
}

1;
