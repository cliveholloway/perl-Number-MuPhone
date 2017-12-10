package Number::MuPhone::Parser::AI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9002123456'},'countryCode'=>'1','personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'generalDesc'=>{'nationalNumberPattern'=>'[2589]\\d{9}'},'tollFree'=>{'exampleNumber'=>'8002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000007/en'},'TerritoryName'=>'Anguilla','availableFormats'=>{'numberFormat'=>[]},'internationalPrefix'=>'011','nationalPrefix'=>'1','leadingDigits'=>'264','mobile'=>{'exampleNumber'=>'2642351234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'264(?:235|476|5(?:3[6-9]|8[1-4])|7(?:29|72))\\d{4}'},'fixedLine'=>{'exampleNumber'=>'2644612345','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'2644(?:6[12]|9[78])\\d{4}'},'CountryCode'=>'AI'};
}

1;
