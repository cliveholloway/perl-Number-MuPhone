package Number::MuPhone::Parser::BI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000022/en'},'TerritoryName'=>'Burundi','mobile'=>{'exampleNumber'=>'79561234','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:29|6[189]|7[124-9])\\d{6}'},'fixedLine'=>{'nationalNumberPattern'=>'22\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'22201234'},'CountryCode'=>'BI','internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[267]\\d{7}'},'countryCode'=>'257'};
}

1;
