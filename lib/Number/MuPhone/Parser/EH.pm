package Number::MuPhone::Parser::EH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'891234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'89\\d{7}'},'countryCode'=>'212','generalDesc'=>{'nationalNumberPattern'=>'[5-9]\\d{8}'},'TerritoryName'=>'Western Sahara','tollFree'=>{'nationalNumberPattern'=>'80\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'801234567'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000090/en'},'availableFormats'=>{'numberFormat'=>[]},'nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'528[89]','internationalPrefix'=>'00','nationalPrefix'=>'0','voip'=>{'nationalNumberPattern'=>'5924[01]\\d{4}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'592401234'},'CountryCode'=>'EH','fixedLine'=>{'nationalNumberPattern'=>'528[89]\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'528812345'},'mobile'=>{'exampleNumber'=>'650123456','nationalNumberPattern'=>'(?:6(?:[0-79]\\d|8[0-247-9])|7(?:[07][07]|6[12]))\\d{6}','possibleLengths'=>{'national'=>'9'}}};
}

1;
