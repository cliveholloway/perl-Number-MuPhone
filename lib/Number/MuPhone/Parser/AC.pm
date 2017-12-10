package Number::MuPhone::Parser::AC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'247','generalDesc'=>{'nationalNumberPattern'=>'[46]\\d{4}|[01589]\\d{5}'},'uan'=>{'exampleNumber'=>'542011','nationalNumberPattern'=>'[01589]\\d{5}','possibleLengths'=>{'national'=>'6'}},'internationalPrefix'=>'00','CountryCode'=>'AC','mobile'=>{'exampleNumber'=>'40123','possibleLengths'=>{'national'=>'5'},'nationalNumberPattern'=>'4\\d{4}'},'fixedLine'=>{'possibleLengths'=>{'national'=>'5'},'nationalNumberPattern'=>'6[2-467]\\d{3}','exampleNumber'=>'62889'},'TerritoryName'=>'Ascension Island','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000AF/en'},'availableFormats'=>{'numberFormat'=>[]}};
}

1;
