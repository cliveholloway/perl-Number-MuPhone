package Number::MuPhone::Parser::YT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'leadingDigits'=>'269|63','nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','CountryCode'=>'YT','fixedLine'=>{'exampleNumber'=>'269601234','nationalNumberPattern'=>'269(?:6[0-4]|50)\\d{4}','possibleLengths'=>{'national'=>'9'}},'mobile'=>{'nationalNumberPattern'=>'639(?:0[0-79]|1[019]|[26]\\d|3[09]|[45]0|7[06]|9[04-79])\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'639012345'},'TerritoryName'=>'Mayotte','references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/Telephone_numbers_in_France','http://www.comores-online.com/mwezinet/internet/262','http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION']},'tollFree'=>{'exampleNumber'=>'801234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'80\\d{7}'},'availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'262','generalDesc'=>{'nationalNumberPattern'=>'[268]\\d{8}'}};
}

1;
