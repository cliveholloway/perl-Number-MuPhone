package Number::MuPhone::Parser::MA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'exampleNumber'=>'891234567','nationalNumberPattern'=>'89\\d{7}','possibleLengths'=>{'national'=>'9'}},'countryCode'=>'212','generalDesc'=>{'nationalNumberPattern'=>'[5-9]\\d{8}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000090/en','http://en.wikipedia.org/wiki/+212','https://www.anrt.ma/sites/default/files/blocs_de_numeros_par_operateur_juillet_2016.pdf']},'mobileNumberPortableRegion'=>'true','nationalPrefixFormattingRule'=>'$NP$FG','fixedLine'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'5(?:2(?:[015-79]\\d|2[02-9]|3[2-57]|4[2-8]|8[235-7])\\d|3(?:[0-48]\\d|[57][2-9]|6[2-8]|9[3-9])\\d|4[067]\\d{2}|5[03]\\d{2})\\d{4}','exampleNumber'=>'520123456'},'CountryCode'=>'MA','mainCountryForCode'=>'true','tollFree'=>{'nationalNumberPattern'=>'80\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'801234567'},'TerritoryName'=>'Morocco','availableFormats'=>{'numberFormat'=>[{'pattern'=>'([5-7]\\d{2})(\\d{6})','leadingDigits'=>'5(?:2[015-7]|3[0-4])|[67]','format'=>'$1-$2'},{'format'=>'$1-$2','pattern'=>'([58]\\d{3})(\\d{5})','leadingDigits'=>'5(?:2(?:[2-48]|9[0-7])|3(?:[5-79]|8[0-7])|924)|892'},{'format'=>'$1-$2','pattern'=>'(5\\d{4})(\\d{4})','leadingDigits'=>'5(?:29|38)[89]'},{'format'=>'$1 $2 $3 $4','leadingDigits'=>'5(?:4[067]|5[03])','pattern'=>'([5]\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'leadingDigits'=>'8(?:0|9[013-9])','pattern'=>'(8[09])(\\d{7})','format'=>'$1-$2'}]},'nationalPrefix'=>'0','internationalPrefix'=>'00','voip'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'5924[01]\\d{4}','exampleNumber'=>'592401234'},'mobile'=>{'exampleNumber'=>'650123456','nationalNumberPattern'=>'(?:6(?:[0-79]\\d|8[0-247-9])|7(?:[07][07]|6[12]))\\d{6}','possibleLengths'=>{'national'=>'9'}}};
}

1;
