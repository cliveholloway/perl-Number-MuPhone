package Number::MuPhone::Parser::BL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[56]\\d{8}'},'countryCode'=>'590','mobile'=>{'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'690001234'},'fixedLine'=>{'nationalNumberPattern'=>'590(?:2[7-9]|5[12]|87)\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'590271234'},'CountryCode'=>'BL','nationalPrefix'=>'0','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000058/en'},'TerritoryName'=>'Saint Barthélemy, French Antilles'};
}

1;
