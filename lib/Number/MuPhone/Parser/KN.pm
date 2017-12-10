package Number::MuPhone::Parser::KN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'9002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'personalNumber'=>{'exampleNumber'=>'5002345678','nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'generalDesc'=>{'nationalNumberPattern'=>'[589]\\d{9}'},'countryCode'=>'1','availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Saint Kitts and Nevis','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B0/en'},'CountryCode'=>'KN','fixedLine'=>{'nationalNumberPattern'=>'869(?:2(?:29|36)|302|4(?:6[015-9]|70))\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'exampleNumber'=>'8692361234'},'mobile'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'869(?:5(?:5[6-8]|6[5-7])|66\\d|76[02-7])\\d{4}','exampleNumber'=>'8697652917'},'leadingDigits'=>'869','internationalPrefix'=>'011','nationalPrefix'=>'1'};
}

1;
