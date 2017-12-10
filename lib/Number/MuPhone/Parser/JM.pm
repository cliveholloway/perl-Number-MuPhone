package Number::MuPhone::Parser::JM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'1','generalDesc'=>{'nationalNumberPattern'=>'[589]\\d{9}'},'personalNumber'=>{'exampleNumber'=>'5002345678','nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'premiumRate'=>{'exampleNumber'=>'9002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'leadingDigits'=>'876','nationalPrefix'=>'1','internationalPrefix'=>'011','CountryCode'=>'JM','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'876(?:5(?:0[12]|1[0-468]|2[35]|63)|6(?:0[1-3579]|1[027-9]|[23]\\d|40|5[06]|6[2-589]|7[05]|8[04]|9[4-9])|7(?:0[2-689]|[1-6]\\d|8[056]|9[45])|9(?:0[1-8]|1[02378]|[2-8]\\d|9[2-468]))\\d{4}','exampleNumber'=>'8765123456'},'mobile'=>{'exampleNumber'=>'8762101234','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'876(?:2[14-9]\\d|[348]\\d{2}|5(?:0[3-9]|[2-57-9]\\d|6[0-24-9])|7(?:0[07]|7\\d|8[1-47-9]|9[0-36-9])|9(?:[01]9|9[0579]))\\d{4}'},'TerritoryName'=>'Jamaica','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200006C/en'},'tollFree'=>{'exampleNumber'=>'8002123456','nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'availableFormats'=>{'numberFormat'=>[]}};
}

1;
