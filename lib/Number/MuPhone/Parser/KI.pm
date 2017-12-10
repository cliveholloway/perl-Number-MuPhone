package Number::MuPhone::Parser::KI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'internationalPrefix'=>'00','voip'=>{'nationalNumberPattern'=>'30(?:0[01]\\d{2}|12(?:11|20))\\d{2}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'30010000'},'CountryCode'=>'KI','mobile'=>{'exampleNumber'=>'72012345','nationalNumberPattern'=>'7[23]0\\d{5}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'31234','possibleLengths'=>{'national'=>'5,8'},'nationalNumberPattern'=>'(?:[24]\\d|3[1-9]|50|8[0-5])\\d{3}|7(?:27|31|5[0-4])\\d{5}'},'TerritoryName'=>'Kiribati','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000071/en'},'availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'686','generalDesc'=>{'nationalNumberPattern'=>'[2458]\\d{4}|3\\d{4,7}|7\\d{7}'},'nationalPrefixForParsing'=>'0'};
}

1;
