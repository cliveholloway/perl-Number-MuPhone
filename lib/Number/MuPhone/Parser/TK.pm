package Number::MuPhone::Parser::TK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'690','generalDesc'=>{'nationalNumberPattern'=>'[2-47]\\d{3,6}'},'internationalPrefix'=>'00','CountryCode'=>'TK','mobile'=>{'exampleNumber'=>'7290','possibleLengths'=>{'national'=>'[4-7]'},'nationalNumberPattern'=>'7[2-4]\\d{2,5}'},'fixedLine'=>{'possibleLengths'=>{'national'=>'[4-7]'},'nationalNumberPattern'=>'(?:2[2-4]|[34]\\d)\\d{2,5}','exampleNumber'=>'3101'},'TerritoryName'=>'Tokelau','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000D2/en'},'availableFormats'=>{'numberFormat'=>[]}};
}

1;
