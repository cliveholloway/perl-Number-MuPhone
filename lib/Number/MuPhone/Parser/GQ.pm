package Number::MuPhone::Parser::GQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'240','generalDesc'=>{'nationalNumberPattern'=>'[23589]\\d{8}'},'premiumRate'=>{'nationalNumberPattern'=>'90\\d[1-9]\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'900123456'},'internationalPrefix'=>'00','fixedLine'=>{'exampleNumber'=>'333091234','nationalNumberPattern'=>'3(?:3(?:3\\d[7-9]|[0-24-9]\\d[46])|5\\d{2}[7-9])\\d{4}','possibleLengths'=>{'national'=>'9'}},'mobile'=>{'exampleNumber'=>'222123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:222|55[15])\\d{6}'},'CountryCode'=>'GQ','tollFree'=>{'nationalNumberPattern'=>'80\\d[1-9]\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'800123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000041/en'},'TerritoryName'=>'Equatorial Guinea','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[235]','pattern'=>'(\\d{3})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'pattern'=>'(\\d{3})(\\d{6})','leadingDigits'=>'[89]','format'=>'$1 $2'}]}};
}

1;
