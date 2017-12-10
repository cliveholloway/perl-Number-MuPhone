package Number::MuPhone::Parser::VI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'9002345678','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'generalDesc'=>{'nationalNumberPattern'=>'[3589]\\d{9}'},'personalNumber'=>{'exampleNumber'=>'5002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'},'countryCode'=>'1','availableFormats'=>{'numberFormat'=>[]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000DF/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','exampleNumber'=>'8002345678'},'TerritoryName'=>'Virgin Islands, United States','fixedLine'=>{'exampleNumber'=>'3406421234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'340(?:2(?:01|2[0678]|44|77)|3(?:32|44)|4(?:22|7[34])|5(?:1[34]|55)|6(?:26|4[23]|77|9[023])|7(?:1[2-589]|27|7\\d)|884|998)\\d{4}'},'mobile'=>{'exampleNumber'=>'3406421234','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'340(?:2(?:01|2[0678]|44|77)|3(?:32|44)|4(?:22|7[34])|5(?:1[34]|55)|6(?:26|4[23]|77|9[023])|7(?:1[2-589]|27|7\\d)|884|998)\\d{4}'},'CountryCode'=>'VI','nationalPrefix'=>'1','internationalPrefix'=>'011','leadingDigits'=>'340'};
}

1;
