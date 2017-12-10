package Number::MuPhone::Parser::FO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefixForParsing'=>'(10(?:01|[12]0|88))','premiumRate'=>{'exampleNumber'=>'901123','nationalNumberPattern'=>'90(?:[1345][15-7]|2[125-7]|99)\\d{2}','possibleLengths'=>{'national'=>'6'}},'generalDesc'=>{'nationalNumberPattern'=>'[2-9]\\d{5}'},'countryCode'=>'298','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d{6})','format'=>'$1'}]},'carrierCodeFormattingRule'=>'$CC $FG','TerritoryName'=>'Faroe Islands','tollFree'=>{'exampleNumber'=>'802123','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'80[257-9]\\d{3}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000047/en'},'CountryCode'=>'FO','mobile'=>{'exampleNumber'=>'211234','nationalNumberPattern'=>'(?:[27][1-9]|5\\d)\\d{4}','possibleLengths'=>{'national'=>'6'}},'fixedLine'=>{'nationalNumberPattern'=>'(?:20|[3-4]\\d|8[19])\\d{4}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'201234'},'internationalPrefix'=>'00','voip'=>{'nationalNumberPattern'=>'(?:6[0-36]|88)\\d{4}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'601234'}};
}

1;
