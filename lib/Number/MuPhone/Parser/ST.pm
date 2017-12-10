package Number::MuPhone::Parser::ST;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'ST','fixedLine'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'22\\d{5}','exampleNumber'=>'2221234'},'mobile'=>{'exampleNumber'=>'9812345','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'9(?:0(?:0[5-9]|[1-9]\\d)|[89]\\d{2})\\d{3}'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{4})'}]},'TerritoryName'=>'Sao Tome and Principe','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B6/en'},'generalDesc'=>{'nationalNumberPattern'=>'[29]\\d{6}'},'countryCode'=>'239'};
}

1;
