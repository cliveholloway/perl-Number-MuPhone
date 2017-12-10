package Number::MuPhone::Parser::MP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'MP','mobile'=>{'exampleNumber'=>'6702345678','nationalNumberPattern'=>'670(?:2(?:3[3-7]|56|8[5-8])|32[1238]|4(?:33|8[348])|5(?:32|55|88)|6(?:64|70|82)|78[3589]|8[3-9]8|989)\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'fixedLine'=>{'nationalNumberPattern'=>'670(?:2(?:3[3-7]|56|8[5-8])|32[1238]|4(?:33|8[348])|5(?:32|55|88)|6(?:64|70|82)|78[3589]|8[3-9]8|989)\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'exampleNumber'=>'6702345678'},'leadingDigits'=>'670','nationalPrefix'=>'1','internationalPrefix'=>'011','availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Northern Mariana Islands','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000EE/en','http://www.cnmiphonebook.com/']},'generalDesc'=>{'nationalNumberPattern'=>'[5689]\\d{9}'},'personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'countryCode'=>'1','premiumRate'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}','exampleNumber'=>'9002123456'}};
}

1;
