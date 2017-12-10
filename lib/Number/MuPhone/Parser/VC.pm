package Number::MuPhone::Parser::VC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'9002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'generalDesc'=>{'nationalNumberPattern'=>'[5789]\\d{9}'},'personalNumber'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','exampleNumber'=>'5002345678'},'countryCode'=>'1','availableFormats'=>{'numberFormat'=>[]},'tollFree'=>{'exampleNumber'=>'8002345678','nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B3/en'},'TerritoryName'=>'Saint Vincent and the Grenadines','mobile'=>{'exampleNumber'=>'7844301234','nationalNumberPattern'=>'784(?:4(?:3[0-4]|5[45]|89|9[0-58])|5(?:2[6-9]|3[0-4]))\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'fixedLine'=>{'possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'784(?:266|3(?:6[6-9]|7\\d|8[0-24-6])|4(?:38|5[0-36-8]|8[0-8])|5(?:55|7[0-2]|93)|638|784)\\d{4}','exampleNumber'=>'7842661234'},'CountryCode'=>'VC','internationalPrefix'=>'011','nationalPrefix'=>'1','leadingDigits'=>'784'};
}

1;
