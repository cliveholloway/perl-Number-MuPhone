package Number::MuPhone::Parser::KM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'269','generalDesc'=>{'nationalNumberPattern'=>'[3478]\\d{6}'},'premiumRate'=>{'nationalNumberPattern'=>'(?:39[01]|8\\d{2})\\d{4}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'8001234'},'internationalPrefix'=>'00','CountryCode'=>'KM','mobile'=>{'exampleNumber'=>'3212345','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'[34]\\d{6}'},'fixedLine'=>{'exampleNumber'=>'7712345','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'7[4-7]\\d{5}'},'TerritoryName'=>'Comoros','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200002D/en'},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'','format'=>'$1 $2 $3'}]}};
}

1;
