package Number::MuPhone::Parser::NF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'672','generalDesc'=>{'nationalNumberPattern'=>'[13]\\d{5}'},'internationalPrefix'=>'00','CountryCode'=>'NF','fixedLine'=>{'possibleLengths'=>{'national'=>'6','localOnly'=>'5'},'nationalNumberPattern'=>'(?:1(?:06|17|28|39)|3[012]\\d)\\d{3}','exampleNumber'=>'106609'},'mobile'=>{'nationalNumberPattern'=>'3[58]\\d{4}','possibleLengths'=>{'localOnly'=>'5','national'=>'6'},'exampleNumber'=>'381234'},'TerritoryName'=>'Norfolk Island','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200009D/en'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{2})(\\d{4})','leadingDigits'=>'1'},{'format'=>'$1 $2','pattern'=>'(\\d)(\\d{5})','leadingDigits'=>'3'}]}};
}

1;
