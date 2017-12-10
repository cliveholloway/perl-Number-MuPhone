package Number::MuPhone::Parser::IO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000039/en'},'TerritoryName'=>'British Indian Ocean Territory / Diego Garcia','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{3})(\\d{4})','leadingDigits'=>''}]},'internationalPrefix'=>'00','fixedLine'=>{'exampleNumber'=>'3709100','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'37\\d{5}'},'mobile'=>{'exampleNumber'=>'3801234','nationalNumberPattern'=>'38\\d{5}','possibleLengths'=>{'national'=>'7'}},'CountryCode'=>'IO','countryCode'=>'246','generalDesc'=>{'nationalNumberPattern'=>'3\\d{6}'}};
}

1;
