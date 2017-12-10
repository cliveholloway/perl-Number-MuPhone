package Number::MuPhone::Parser::SX;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'1','personalNumber'=>{'exampleNumber'=>'5002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'},'generalDesc'=>{'nationalNumberPattern'=>'[5789]\\d{9}'},'premiumRate'=>{'exampleNumber'=>'9002123456','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'leadingDigits'=>'721','internationalPrefix'=>'011','nationalPrefix'=>'1','CountryCode'=>'SX','fixedLine'=>{'exampleNumber'=>'7215425678','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'7215(?:4[2-8]|8[239]|9[056])\\d{4}'},'mobile'=>{'exampleNumber'=>'7215205678','nationalNumberPattern'=>'7215(?:1[02]|2\\d|5[034679]|8[014-8])\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'TerritoryName'=>'Sint Maarten','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>['http://www.nanpa.com/pdf/PL_429.pdf','http://www.itu.int/oth/T02020000F7/en']},'availableFormats'=>{'numberFormat'=>[]}};
}

1;
