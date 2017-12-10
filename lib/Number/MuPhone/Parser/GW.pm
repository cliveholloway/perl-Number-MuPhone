package Number::MuPhone::Parser::GW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'voip'=>{'exampleNumber'=>'4012345','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'40\\d{5}'},'internationalPrefix'=>'00','CountryCode'=>'GW','fixedLine'=>{'nationalNumberPattern'=>'443\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'443201234'},'mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'9(?:5(?:5\\d|6[0-2])|6(?:5[0-2]|6\\d|9[012])|77\\d)\\d{5}','exampleNumber'=>'955012345'},'TerritoryName'=>'Guinea-Bissau','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200005C/en'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{3})','leadingDigits'=>'44|9[567]'},{'format'=>'$1 $2','leadingDigits'=>'40','pattern'=>'(\\d{3})(\\d{4})'}]},'countryCode'=>'245','generalDesc'=>{'nationalNumberPattern'=>'(?:4(?:0\\d{5}|4\\d{7})|9\\d{8})'}};
}

1;
