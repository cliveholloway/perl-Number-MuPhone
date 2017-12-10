package Number::MuPhone::Parser::GL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'GL','mobile'=>{'exampleNumber'=>'221234','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'[245][2-9]\\d{4}'},'fixedLine'=>{'exampleNumber'=>'321000','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'(?:19|3[1-6]|6[14689]|8[14-79]|9\\d)\\d{4}'},'voip'=>{'exampleNumber'=>'381234','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'3[89]\\d{4}'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Greenland','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000056/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'80\\d{4}','exampleNumber'=>'801234'},'generalDesc'=>{'nationalNumberPattern'=>'[1-689]\\d{5}'},'countryCode'=>'299'};
}

1;
