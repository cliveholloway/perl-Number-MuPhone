package Number::MuPhone::Parser::FK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'FK','fixedLine'=>{'exampleNumber'=>'31234','nationalNumberPattern'=>'[2-47]\\d{4}','possibleLengths'=>{'national'=>'5'}},'mobile'=>{'exampleNumber'=>'51234','nationalNumberPattern'=>'[56]\\d{4}','possibleLengths'=>{'national'=>'5'}},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Falkland Islands (Malvinas)','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000046/en'},'generalDesc'=>{'nationalNumberPattern'=>'[2-7]\\d{4}'},'countryCode'=>'500'};
}

1;
