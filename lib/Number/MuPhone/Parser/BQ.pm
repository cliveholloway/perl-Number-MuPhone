package Number::MuPhone::Parser::BQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'599','generalDesc'=>{'nationalNumberPattern'=>'[347]\\d{6}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000F8/en'},'TerritoryName'=>'Bonaire, Sint Eustatius and Saba','availableFormats'=>{'numberFormat'=>[]},'internationalPrefix'=>'00','mobile'=>{'exampleNumber'=>'3181234','nationalNumberPattern'=>'(?:31(?:8[14-8]|9[14578])|416[145-9]|7(?:0[01]|7[07]|8\\d|9[056])\\d)\\d{3}','possibleLengths'=>{'national'=>'7'}},'fixedLine'=>{'exampleNumber'=>'7151234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:318[023]|41(?:6[023]|70)|7(?:1[578]|50)\\d)\\d{3}'},'CountryCode'=>'BQ'};
}

1;
