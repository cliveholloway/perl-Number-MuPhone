package Number::MuPhone::Parser::GP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'590','generalDesc'=>{'nationalNumberPattern'=>'[56]\\d{8}'},'mainCountryForCode'=>'true','nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0','CountryCode'=>'GP','fixedLine'=>{'exampleNumber'=>'590201234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'590(?:0[13468]|1[012]|2[0-68]|3[28]|4[0-8]|5[579]|6[0189]|70|8[0-689]|9\\d)\\d{4}'},'mobile'=>{'nationalNumberPattern'=>'690(?:0[05-9]|[1-9]\\d)\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'690001234'},'TerritoryName'=>'Guadeloupe','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000058/en','http://www.arcep.fr/fileadmin/reprise/dossiers/numero/ZABPQ-ZNE.xls']},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'([56]90)(\\d{2})(\\d{4})','leadingDigits'=>'','format'=>'$1 $2-$3'}]}};
}

1;
