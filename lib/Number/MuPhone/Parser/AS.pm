package Number::MuPhone::Parser::AS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'American Samoa','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000004/en'},'CountryCode'=>'AS','mobile'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'684(?:2(?:5[2468]|72)|7(?:3[13]|70))\\d{4}','exampleNumber'=>'6847331234'},'fixedLine'=>{'exampleNumber'=>'6846221234','nationalNumberPattern'=>'6846(?:22|33|44|55|77|88|9[19])\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'}},'leadingDigits'=>'684','nationalPrefix'=>'1','internationalPrefix'=>'011','premiumRate'=>{'exampleNumber'=>'9002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'personalNumber'=>{'exampleNumber'=>'5002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'},'generalDesc'=>{'nationalNumberPattern'=>'[5689]\\d{9}'},'countryCode'=>'1'};
}

1;
