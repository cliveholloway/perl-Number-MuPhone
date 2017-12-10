package Number::MuPhone::Parser::KG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000074/en'},'tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'800\\d{6,7}','possibleLengths'=>{'national'=>'9,10'}},'TerritoryName'=>'Kyrgyzstan','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{3})(\\d{3})','leadingDigits'=>'[25-7]|31[25]','format'=>'$1 $2 $3'},{'format'=>'$1 $2','pattern'=>'(\\d{4})(\\d{5})','leadingDigits'=>'3(?:1[36]|[2-9])'},{'format'=>'$1 $2 $3 $4','pattern'=>'(\\d{3})(\\d{3})(\\d)(\\d{3})','leadingDigits'=>'8'}]},'internationalPrefix'=>'00','nationalPrefix'=>'0','nationalPrefixFormattingRule'=>'$NP$FG','mobile'=>{'exampleNumber'=>'700123456','nationalNumberPattern'=>'(?:20[0-35]|5[124-7]\\d|7[07]\\d)\\d{6}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'nationalNumberPattern'=>'(?:3(?:1(?:[256]\\d|3[1-9]|47)|2(?:22|3[0-479]|6[0-7])|4(?:22|5[6-9]|6\\d)|5(?:22|3[4-7]|59|6\\d)|6(?:22|5[35-7]|6\\d)|7(?:22|3[468]|4[1-9]|59|[67]\\d)|9(?:22|4[1-8]|6\\d))|6(?:09|12|2[2-4])\\d)\\d{5}','possibleLengths'=>{'national'=>'9','localOnly'=>'5,6'},'exampleNumber'=>'312123456'},'CountryCode'=>'KG','countryCode'=>'996','generalDesc'=>{'nationalNumberPattern'=>'[235-8]\\d{8,9}'}};
}

1;
