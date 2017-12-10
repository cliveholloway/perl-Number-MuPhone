package Number::MuPhone::Parser::TO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[02-8]\\d{4,6}'},'countryCode'=>'676','availableFormats'=>{'numberFormat'=>[{'format'=>'$1-$2','pattern'=>'(\\d{2})(\\d{3})','leadingDigits'=>'[1-6]|7[0-4]|8[05]'},{'pattern'=>'(\\d{3})(\\d{4})','leadingDigits'=>'7[5-9]|8[47-9]','format'=>'$1 $2'},{'leadingDigits'=>'','pattern'=>'(\\d{4})(\\d{3})','format'=>'$1 $2'}]},'TerritoryName'=>'Tonga','tollFree'=>{'exampleNumber'=>'0800222','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'0800\\d{3}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000D3/en','http://www.wtng.info/wtng-676-to.html']},'CountryCode'=>'TO','mobile'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:7[578]|8[47-9])\\d{5}','exampleNumber'=>'7715123'},'fixedLine'=>{'nationalNumberPattern'=>'(?:2\\d|3[1-8]|4[1-4]|[56]0|7[0149]|8[05])\\d{3}','possibleLengths'=>{'national'=>'5'},'exampleNumber'=>'20123'},'internationalPrefix'=>'00'};
}

1;
