package Number::MuPhone::Parser::RE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mainCountryForCode'=>'true','tollFree'=>{'exampleNumber'=>'801234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'80\\d{7}'},'TerritoryName'=>'Réunion (French Departments and Territories in the Indian Ocean)','sharedCost'=>{'exampleNumber'=>'810123456','nationalNumberPattern'=>'8(?:1[019]|2[0156]|84|90)\\d{6}','possibleLengths'=>{'national'=>'9'}},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'([268]\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'','format'=>'$1 $2 $3 $4'}]},'internationalPrefix'=>'00','nationalPrefix'=>'0','mobile'=>{'nationalNumberPattern'=>'69(?:2\\d{2}|3(?:0[0-46]|1[013]|2[0-2]|3[039]|4[0-7]|5[05]|6[06]|7[07]|8[0-38]|9[0-479]))\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'692123456'},'premiumRate'=>{'exampleNumber'=>'891123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'89[1-37-9]\\d{6}'},'countryCode'=>'262','generalDesc'=>{'nationalNumberPattern'=>'[268]\\d{8}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200004B/en','http://www.arcep.fr/index.php?id=2137&bloc=0596&CMD=RESULTS_NUMEROTATION']},'nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'262|69|8','fixedLine'=>{'exampleNumber'=>'262161234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'262\\d{6}'},'CountryCode'=>'RE'};
}

1;
