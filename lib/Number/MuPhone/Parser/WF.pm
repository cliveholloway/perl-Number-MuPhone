package Number::MuPhone::Parser::WF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[4-8]\\d{5}'},'voicemail'=>{'exampleNumber'=>'401234','nationalNumberPattern'=>'[48]0\\d{4}','possibleLengths'=>{'national'=>'6'}},'countryCode'=>'681','fixedLine'=>{'exampleNumber'=>'501234','nationalNumberPattern'=>'(?:50|68|72)\\d{4}','possibleLengths'=>{'national'=>'6'}},'mobile'=>{'nationalNumberPattern'=>'(?:50|68|72|8[23])\\d{4}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'501234'},'CountryCode'=>'WF','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000E6/en'},'TerritoryName'=>'Wallis and Futuna (Territoire français d\'outre-mer)'};
}

1;
