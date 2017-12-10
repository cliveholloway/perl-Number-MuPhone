package Number::MuPhone::Parser::LC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'leadingDigits'=>'758','internationalPrefix'=>'011','nationalPrefix'=>'1','CountryCode'=>'LC','fixedLine'=>{'exampleNumber'=>'7584305678','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'758(?:4(?:30|5[0-9]|6[2-9]|8[0-2])|57[0-2]|638)\\d{4}'},'mobile'=>{'exampleNumber'=>'7582845678','nationalNumberPattern'=>'758(?:28[4-7]|384|4(?:6[01]|8[4-9])|5(?:1[89]|20|84)|7(?:1[2-9]|2[0-8]))\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'TerritoryName'=>'Saint Lucia','tollFree'=>{'exampleNumber'=>'8002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B1/en'},'availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'1','generalDesc'=>{'nationalNumberPattern'=>'[5789]\\d{9}'},'personalNumber'=>{'exampleNumber'=>'5002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'},'premiumRate'=>{'exampleNumber'=>'9002123456','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}}};
}

1;
