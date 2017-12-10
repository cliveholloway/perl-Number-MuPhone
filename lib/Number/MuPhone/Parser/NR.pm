package Number::MuPhone::Parser::NR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[458]\\d{6}'},'countryCode'=>'674','CountryCode'=>'NR','fixedLine'=>{'exampleNumber'=>'4441234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:444|888)\\d{4}'},'mobile'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'55[5-9]\\d{4}','exampleNumber'=>'5551234'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{4})'}]},'TerritoryName'=>'Nauru','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000094/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Nauru']}};
}

1;
