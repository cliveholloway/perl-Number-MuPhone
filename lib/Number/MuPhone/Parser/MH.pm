package Number::MuPhone::Parser::MH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'MH','fixedLine'=>{'nationalNumberPattern'=>'(?:247|528|625)\\d{4}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'2471234'},'mobile'=>{'exampleNumber'=>'2351234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:235|329|45[56]|545)\\d{4}'},'voip'=>{'nationalNumberPattern'=>'635\\d{4}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'6351234'},'internationalPrefix'=>'011','nationalPrefix'=>'1','availableFormats'=>{'numberFormat'=>[{'format'=>'$1-$2','leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{4})'}]},'TerritoryName'=>'Marshall Islands','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000085/en'},'generalDesc'=>{'nationalNumberPattern'=>'[2-6]\\d{6}'},'countryCode'=>'692'};
}

1;
