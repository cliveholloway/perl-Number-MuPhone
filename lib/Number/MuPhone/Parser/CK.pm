package Number::MuPhone::Parser::CK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[2-8]\\d{4}'},'countryCode'=>'682','CountryCode'=>'CK','fixedLine'=>{'exampleNumber'=>'21234','possibleLengths'=>{'national'=>'5'},'nationalNumberPattern'=>'(?:2\\d|3[13-7]|4[1-5])\\d{3}'},'mobile'=>{'exampleNumber'=>'71234','possibleLengths'=>{'national'=>'5'},'nationalNumberPattern'=>'[5-8]\\d{4}'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{3})'}]},'TerritoryName'=>'Cook Islands','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200002F/en'}};
}

1;
