package Number::MuPhone::Parser::TV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'TerritoryName'=>'Tuvalu','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000D9/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Tuvalu']},'availableFormats'=>{'numberFormat'=>[]},'internationalPrefix'=>'00','CountryCode'=>'TV','mobile'=>{'possibleLengths'=>{'national'=>'6,7'},'nationalNumberPattern'=>'(?:70\\d|90)\\d{4}','exampleNumber'=>'901234'},'fixedLine'=>{'exampleNumber'=>'20123','possibleLengths'=>{'national'=>'5'},'nationalNumberPattern'=>'2[02-9]\\d{3}'},'countryCode'=>'688','generalDesc'=>{'nationalNumberPattern'=>'[279]\\d{4,6}'}};
}

1;
