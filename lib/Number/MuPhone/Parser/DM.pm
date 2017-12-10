package Number::MuPhone::Parser::DM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'1','personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'generalDesc'=>{'nationalNumberPattern'=>'[57-9]\\d{9}'},'premiumRate'=>{'exampleNumber'=>'9002123456','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'internationalPrefix'=>'011','nationalPrefix'=>'1','leadingDigits'=>'767','fixedLine'=>{'nationalNumberPattern'=>'767(?:2(?:55|66)|4(?:2[01]|4[0-25-9])|50[0-4]|70[1-3])\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'exampleNumber'=>'7674201234'},'mobile'=>{'exampleNumber'=>'7672251234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'767(?:2(?:[234689]5|7[5-7])|31[5-7]|61[2-7])\\d{4}'},'CountryCode'=>'DM','tollFree'=>{'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200003B/en'},'TerritoryName'=>'Dominica','availableFormats'=>{'numberFormat'=>[]}};
}

1;
