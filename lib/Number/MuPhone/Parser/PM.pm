package Number::MuPhone::Parser::PM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'([45]\\d)(\\d{2})(\\d{2})','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Saint Pierre and Miquelon (Collectivité territoriale de la République française)','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B2/en'},'CountryCode'=>'PM','fixedLine'=>{'possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'41\\d{4}','exampleNumber'=>'411234'},'mobile'=>{'possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'(?:40|55)\\d{4}','exampleNumber'=>'551234'},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[45]\\d{5}'},'countryCode'=>'508'};
}

1;
