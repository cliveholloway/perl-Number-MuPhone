package Number::MuPhone::Parser::GT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'internationalPrefix'=>'00','CountryCode'=>'GT','fixedLine'=>{'exampleNumber'=>'22456789','nationalNumberPattern'=>'[267][2-9]\\d{6}','possibleLengths'=>{'national'=>'8'}},'mobile'=>{'exampleNumber'=>'51234567','nationalNumberPattern'=>'[345]\\d{7}','possibleLengths'=>{'national'=>'8'}},'TerritoryName'=>'Guatemala','tollFree'=>{'exampleNumber'=>'18001112222','possibleLengths'=>{'national'=>'11'},'nationalNumberPattern'=>'18[01]\\d{8}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200005A/en','http://www.sit.gob.gt/index.php?page=plan-de-numeracion','http://en.wikipedia.org/wiki/Telephone_numbers_in_Guatemala']},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'[2-7]','format'=>'$1 $2'},{'format'=>'$1 $2 $3','leadingDigits'=>'1','pattern'=>'(\\d{4})(\\d{3})(\\d{4})'}]},'countryCode'=>'502','generalDesc'=>{'nationalNumberPattern'=>'[2-7]\\d{7}|1[89]\\d{9}'},'premiumRate'=>{'exampleNumber'=>'19001112222','possibleLengths'=>{'national'=>'11'},'nationalNumberPattern'=>'19\\d{9}'}};
}

1;
