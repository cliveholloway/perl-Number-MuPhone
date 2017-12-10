package Number::MuPhone::Parser::VG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'1','generalDesc'=>{'nationalNumberPattern'=>'[2589]\\d{9}'},'personalNumber'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','exampleNumber'=>'5002345678'},'premiumRate'=>{'nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9002345678'},'leadingDigits'=>'284','internationalPrefix'=>'011','nationalPrefix'=>'1','CountryCode'=>'VG','mobile'=>{'exampleNumber'=>'2843001234','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'284(?:(?:3(?:0[0-3]|4[0-7]|68|9[34])|4(?:4[0-6]|68|99)|54[0-57])\\d{4}|496[6-9]\\d{3})'},'fixedLine'=>{'nationalNumberPattern'=>'284(?:(?:229|4(?:22|9[45])|774|8(?:52|6[459]))\\d{4}|496[0-5]\\d{3})','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'exampleNumber'=>'2842291234'},'TerritoryName'=>'Virgin Islands, British','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002345678'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200001E/en'},'availableFormats'=>{'numberFormat'=>[]}};
}

1;
