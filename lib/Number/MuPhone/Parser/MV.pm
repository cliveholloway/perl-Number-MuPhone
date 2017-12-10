package Number::MuPhone::Parser::MV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'960','generalDesc'=>{'nationalNumberPattern'=>'[346-8]\\d{6,9}|9(?:00\\d{7}|\\d{6})'},'premiumRate'=>{'nationalNumberPattern'=>'900\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9001234567'},'pager'=>{'exampleNumber'=>'7812345','nationalNumberPattern'=>'781\\d{4}','possibleLengths'=>{'national'=>'7'}},'uan'=>{'exampleNumber'=>'4001234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'4[05]0\\d{4}'},'preferredInternationalPrefix'=>'00','internationalPrefix'=>'0(?:0|19)','CountryCode'=>'MV','fixedLine'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:3(?:0[0-3]|3[0-59])|6(?:[57][02468]|6[024568]|8[024689]|90))\\d{4}','exampleNumber'=>'6701234'},'mobile'=>{'nationalNumberPattern'=>'(?:46[46]|7[3-9]\\d|9[15-9]\\d)\\d{4}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'7712345'},'TerritoryName'=>'Maldives','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000082/en','http://www.dhiraagu.com.mv']},'tollFree'=>{'exampleNumber'=>'8001234567','nationalNumberPattern'=>'800\\d{7}','possibleLengths'=>{'national'=>'10'}},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1-$2','pattern'=>'(\\d{3})(\\d{4})','leadingDigits'=>'[3467]|9(?:[1-9]|0[1-9])'},{'leadingDigits'=>'[89]00','pattern'=>'(\\d{3})(\\d{3})(\\d{4})','format'=>'$1 $2 $3'}]}};
}

1;
