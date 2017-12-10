package Number::MuPhone::Parser::GN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[367]\\d{7,8}'},'countryCode'=>'224','CountryCode'=>'GN','fixedLine'=>{'exampleNumber'=>'30241234','nationalNumberPattern'=>'30(?:24|3[12]|4[1-35-7]|5[13]|6[189]|[78]1|9[1478])\\d{4}','possibleLengths'=>{'national'=>'8'}},'mobile'=>{'nationalNumberPattern'=>'6[02356]\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'601123456'},'voip'=>{'nationalNumberPattern'=>'722\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'722123456'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'3','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'format'=>'$1 $2 $3 $4','leadingDigits'=>'[67]','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Guinea','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200005B/en'}};
}

1;
