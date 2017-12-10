package Number::MuPhone::Parser::PR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'1','personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'generalDesc'=>{'nationalNumberPattern'=>'[5789]\\d{9}'},'premiumRate'=>{'exampleNumber'=>'9002345678','nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'nationalPrefix'=>'1','internationalPrefix'=>'011','leadingDigits'=>'787|939','fixedLine'=>{'exampleNumber'=>'7872345678','nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10','localOnly'=>'7'}},'mobile'=>{'possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'(?:787|939)[2-9]\\d{6}','exampleNumber'=>'7872345678'},'CountryCode'=>'PR','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000AA/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','exampleNumber'=>'8002345678'},'TerritoryName'=>'Pitcairn Island','availableFormats'=>{'numberFormat'=>[]}};
}

1;
