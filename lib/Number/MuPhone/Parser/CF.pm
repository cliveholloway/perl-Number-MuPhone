package Number::MuPhone::Parser::CF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[278]\\d{7}'},'countryCode'=>'236','premiumRate'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'8776\\d{4}','exampleNumber'=>'87761234'},'mobile'=>{'nationalNumberPattern'=>'7[0257]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'70012345'},'fixedLine'=>{'nationalNumberPattern'=>'2[12]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'21612345'},'CountryCode'=>'CF','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000028/en'},'TerritoryName'=>'Central African Republic'};
}

1;
