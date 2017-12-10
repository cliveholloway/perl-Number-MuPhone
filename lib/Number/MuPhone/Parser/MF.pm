package Number::MuPhone::Parser::MF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'internationalPrefix'=>'00','nationalPrefix'=>'0','mobile'=>{'exampleNumber'=>'690001234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}'},'fixedLine'=>{'exampleNumber'=>'590271234','nationalNumberPattern'=>'590(?:[02][79]|13|5[0-268]|[78]7)\\d{4}','possibleLengths'=>{'national'=>'9'}},'CountryCode'=>'MF','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000058/en','http://www.arcep.fr/fileadmin/reprise/dossiers/numero/ZABPQ-ZNE.xls']},'TerritoryName'=>'Saint-Martin, French Antilles','availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'590','generalDesc'=>{'nationalNumberPattern'=>'[56]\\d{8}'}};
}

1;
