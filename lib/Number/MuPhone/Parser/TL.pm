package Number::MuPhone::Parser::TL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{3})(\\d{4})','leadingDigits'=>'[2-489]|70'},{'format'=>'$1 $2','leadingDigits'=>'7[3-8]','pattern'=>'(\\d{4})(\\d{4})'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000D0/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'80\\d{5}','exampleNumber'=>'8012345'},'TerritoryName'=>'Timor-Leste (East Timor)','mobile'=>{'exampleNumber'=>'77212345','nationalNumberPattern'=>'7[3-8]\\d{6}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'2112345','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:2[1-5]|3[1-9]|4[1-4])\\d{5}'},'CountryCode'=>'TL','internationalPrefix'=>'00','premiumRate'=>{'exampleNumber'=>'9012345','nationalNumberPattern'=>'90\\d{5}','possibleLengths'=>{'national'=>'7'}},'generalDesc'=>{'nationalNumberPattern'=>'[2-489]\\d{6}|7\\d{6,7}'},'personalNumber'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'70\\d{5}','exampleNumber'=>'7012345'},'countryCode'=>'670'};
}

1;
