package Number::MuPhone::Parser::AO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[29]\\d{8}'},'countryCode'=>'244','mobile'=>{'exampleNumber'=>'923123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'9[1-49]\\d{7}'},'fixedLine'=>{'exampleNumber'=>'222123456','nationalNumberPattern'=>'2\\d(?:[26-9]\\d|\\d[26-9])\\d{5}','possibleLengths'=>{'national'=>'9'}},'CountryCode'=>'AO','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{3})(\\d{3})'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000006/en'},'TerritoryName'=>'Angola'};
}

1;
