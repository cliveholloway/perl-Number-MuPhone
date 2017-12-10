package Number::MuPhone::Parser::PG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{6,7}'},'countryCode'=>'675','preferredInternationalPrefix'=>'00','CountryCode'=>'PG','fixedLine'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:3[0-2]\\d|4[257]\\d|5[34]\\d|64[1-9]|77(?:[0-24]\\d|30)|85[02-46-9]|9[78]\\d)\\d{4}','exampleNumber'=>'3123456'},'mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'7(?:[0-689]\\d|75)\\d{5}','exampleNumber'=>'70123456'},'voip'=>{'exampleNumber'=>'2751234','nationalNumberPattern'=>'2(?:0[0-47]|7[568])\\d{4}','possibleLengths'=>{'national'=>'7'}},'internationalPrefix'=>'140[1-3]|00','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[13-689]|27','pattern'=>'(\\d{3})(\\d{4})','format'=>'$1 $2'},{'leadingDigits'=>'20|7','pattern'=>'(\\d{4})(\\d{4})','format'=>'$1 $2'}]},'TerritoryName'=>'Papua New Guinea','tollFree'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'180\\d{4}','exampleNumber'=>'1801234'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000A4/en','http://en.wikipedia.org/wiki/%2B675','http://nicta.gov.pg/search?searchword=numbering%20plan']}};
}

1;
