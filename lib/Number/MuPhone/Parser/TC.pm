package Number::MuPhone::Parser::TC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'voip'=>{'possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'64971[01]\\d{4}','exampleNumber'=>'6497101234'},'nationalPrefix'=>'1','internationalPrefix'=>'011','leadingDigits'=>'649','fixedLine'=>{'exampleNumber'=>'6497121234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'649(?:712|9(?:4\\d|50))\\d{4}'},'mobile'=>{'nationalNumberPattern'=>'649(?:2(?:3[129]|4[1-7])|3(?:3[1-389]|4[1-8])|4[34][1-3])\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'exampleNumber'=>'6492311234'},'CountryCode'=>'TC','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000D8/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','exampleNumber'=>'8002345678'},'TerritoryName'=>'Turks and Caicos Islands','availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'1','generalDesc'=>{'nationalNumberPattern'=>'[5689]\\d{9}'},'personalNumber'=>{'exampleNumber'=>'5002345678','nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'premiumRate'=>{'exampleNumber'=>'9002345678','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}}};
}

1;
