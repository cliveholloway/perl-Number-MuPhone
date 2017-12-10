package Number::MuPhone::Parser::CR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'CR','fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2[0-24-7]\\d{6}','exampleNumber'=>'22123456'},'mobile'=>{'nationalNumberPattern'=>'5(?:0[01]|7[0-3])\\d{5}|6(?:[0-4]\\d{3}|500[01])\\d{3}|(?:7[0-3]|8[3-9])\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'83123456'},'voip'=>{'exampleNumber'=>'40001234','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'210[0-6]\\d{4}|4\\d{7}|5100\\d{4}'},'internationalPrefix'=>'00','carrierCodeFormattingRule'=>'$CC $FG','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[24-7]|8[3-9]','pattern'=>'(\\d{4})(\\d{4})','format'=>'$1 $2'},{'leadingDigits'=>'[89]0','pattern'=>'(\\d{3})(\\d{3})(\\d{4})','format'=>'$1-$2-$3'}]},'TerritoryName'=>'Costa Rica','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000030/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Costa_Rica']},'tollFree'=>{'nationalNumberPattern'=>'800\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8001234567'},'generalDesc'=>{'nationalNumberPattern'=>'[24-9]\\d{7,9}'},'countryCode'=>'506','nationalPrefixForParsing'=>'(19(?:0[012468]|1[09]|20|66|77|99))','premiumRate'=>{'nationalNumberPattern'=>'90[059]\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9001234567'}};
}

1;
