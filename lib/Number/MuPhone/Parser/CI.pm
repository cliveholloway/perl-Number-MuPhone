package Number::MuPhone::Parser::CI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'CI','mobile'=>{'nationalNumberPattern'=>'(?:0[1-9]|4\\d|5[14-9]|6[015-79]|[78][4-9])\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'01234567'},'fixedLine'=>{'exampleNumber'=>'21234567','nationalNumberPattern'=>'(?:2(?:0[023]|1[02357]|[23][045]|4[03-5])|3(?:0[06]|1[069]|[2-4][07]|5[09]|6[08]))\\d{5}','possibleLengths'=>{'national'=>'8'}},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Côte d\'Ivoire','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000031/en',"http://fr.wikipedia.org/wiki/Liste_des_indicatifs_t\x{e9}l\x{e9}phoniques_en_C\x{f4}te_d\x{2019}Ivoire"]},'generalDesc'=>{'nationalNumberPattern'=>'[02-8]\\d{7}'},'countryCode'=>'225'};
}

1;
