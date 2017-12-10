package Number::MuPhone::Parser::LI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'LI','fixedLine'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:2(?:01|1[27]|3\\d|6[02-578]|96)|3(?:7[0135-7]|8[048]|9[0269]))\\d{4}','exampleNumber'=>'2345678'},'mobile'=>{'nationalNumberPattern'=>'6(?:5(?:09|1\\d|20)|6(?:0[0-6]|10|2[06-9]|39))\\d{5}|7(?:[37-9]\\d|42|56)\\d{4}','possibleLengths'=>{'national'=>'7,9'},'exampleNumber'=>'660234567'},'internationalPrefix'=>'00','nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'[23789]','format'=>'$1 $2 $3'},{'leadingDigits'=>'6[56]','pattern'=>'(\\d{3})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'pattern'=>'(69)(7\\d{2})(\\d{4})','leadingDigits'=>'697','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Liechtenstein','references'=>{'sourceUrl'=>['http://www.llv.li/#/11193','https://www.itu.int/oth/T020200007B/en']},'tollFree'=>{'nationalNumberPattern'=>'80(?:02[28]|9\\d{2})\\d{2}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'8002222'},'generalDesc'=>{'nationalNumberPattern'=>'6\\d{8}|[23789]\\d{6}'},'voicemail'=>{'exampleNumber'=>'697861234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'697(?:42|56|[78]\\d)\\d{4}'},'countryCode'=>'423','nationalPrefixForParsing'=>'0|10(?:01|20|66)','uan'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'870(?:28|87)\\d{2}','exampleNumber'=>'8702812'},'premiumRate'=>{'nationalNumberPattern'=>'90(?:02[258]|1(?:23|3[14])|66[136])\\d{2}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'9002222'}};
}

1;
