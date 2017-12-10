package Number::MuPhone::Parser::MQ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'MQ','fixedLine'=>{'exampleNumber'=>'596301234','nationalNumberPattern'=>'596(?:0[2-5]|[12]0|3[05-9]|4[024-8]|[5-7]\\d|89|9[4-8])\\d{4}','possibleLengths'=>{'national'=>'9'}},'mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'696(?:[0-47-9]\\d|5[0-6]|6[0-4])\\d{4}','exampleNumber'=>'696201234'},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Martinique (French Dept. of)','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000086/en','http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION']},'generalDesc'=>{'nationalNumberPattern'=>'[56]\\d{8}'},'countryCode'=>'596'};
}

1;
