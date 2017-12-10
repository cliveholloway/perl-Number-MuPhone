package Number::MuPhone::Parser::BS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'9002123456','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'personalNumber'=>{'exampleNumber'=>'5002345678','nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'generalDesc'=>{'nationalNumberPattern'=>'[2589]\\d{9}'},'countryCode'=>'1','availableFormats'=>{'numberFormat'=>[]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000010/en'},'tollFree'=>{'exampleNumber'=>'8002123456','nationalNumberPattern'=>'242300\\d{4}|8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'TerritoryName'=>'Bahamas','fixedLine'=>{'nationalNumberPattern'=>'242(?:3(?:02|[236][1-9]|4[0-24-9]|5[0-68]|7[3467]|8[0-4]|9[2-467])|461|502|6(?:0[1-3]|12|7[67]|8[78]|9[89])|7(?:02|88))\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'exampleNumber'=>'2423456789'},'mobile'=>{'exampleNumber'=>'2423591234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'242(?:3(?:5[79]|[79]5)|4(?:[2-4][1-9]|5[1-8]|6[2-8]|7\\d|81)|5(?:2[45]|3[35]|44|5[1-9]|65|77)|6[34]6|7(?:27|38)|8(?:0[1-9]|1[02-9]|2\\d|99))\\d{4}'},'CountryCode'=>'BS','internationalPrefix'=>'011','nationalPrefix'=>'1','leadingDigits'=>'242'};
}

1;
