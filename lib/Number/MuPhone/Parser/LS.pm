package Number::MuPhone::Parser::LS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'266','generalDesc'=>{'nationalNumberPattern'=>'[2568]\\d{7}'},'internationalPrefix'=>'00','CountryCode'=>'LS','fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2\\d{7}','exampleNumber'=>'22123456'},'mobile'=>{'exampleNumber'=>'50123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[56]\\d{7}'},'TerritoryName'=>'Lesotho','tollFree'=>{'nationalNumberPattern'=>'800[256]\\d{4}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'80021234'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000078/en'},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'','format'=>'$1 $2'}]}};
}

1;
