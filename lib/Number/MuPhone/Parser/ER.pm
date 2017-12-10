package Number::MuPhone::Parser::ER;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[178]\\d{6}'},'countryCode'=>'291','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d)(\\d{3})(\\d{3})','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Eritrea','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000042/en'},'CountryCode'=>'ER','fixedLine'=>{'nationalNumberPattern'=>'1(?:1[12568]|20|40|55|6[146])\\d{4}|8\\d{6}','possibleLengths'=>{'national'=>'7','localOnly'=>'6'},'exampleNumber'=>'8370362'},'mobile'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'17[1-3]\\d{4}|7\\d{6}','exampleNumber'=>'7123456'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0'};
}

1;
