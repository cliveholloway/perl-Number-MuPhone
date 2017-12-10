package Number::MuPhone::Parser::FM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[39]\\d{6}'},'countryCode'=>'691','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{4})','format'=>'$1 $2'}]},'TerritoryName'=>'Micronesia, Federated States of','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200008B/en'},'CountryCode'=>'FM','mobile'=>{'exampleNumber'=>'3501234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-7]\\d{5}'},'fixedLine'=>{'exampleNumber'=>'3201234','nationalNumberPattern'=>'3[2357]0[1-9]\\d{3}|9[2-6]\\d{5}','possibleLengths'=>{'national'=>'7'}},'internationalPrefix'=>'00'};
}

1;
