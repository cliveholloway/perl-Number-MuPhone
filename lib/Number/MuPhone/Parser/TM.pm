package Number::MuPhone::Parser::TM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'TerritoryName'=>'Turkmenistan','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000D7/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Turkmenistan']},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'12','format'=>'$1 $2-$3-$4'},{'nationalPrefixFormattingRule'=>'$NP $FG','leadingDigits'=>'6','pattern'=>'(\\d{2})(\\d{6})','format'=>'$1 $2'},{'pattern'=>'(\\d{3})(\\d)(\\d{2})(\\d{2})','leadingDigits'=>'13|[2-5]','format'=>'$1 $2-$3-$4'}]},'nationalPrefixFormattingRule'=>'($NP $FG)','internationalPrefix'=>'810','nationalPrefix'=>'8','CountryCode'=>'TM','fixedLine'=>{'nationalNumberPattern'=>'(?:1(?:2\\d|3[1-9])|2(?:22|4[0-35-8])|3(?:22|4[03-9])|4(?:22|3[128]|4\\d|6[15])|5(?:22|5[7-9]|6[014-689]))\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'12345678'},'mobile'=>{'exampleNumber'=>'66123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'6[1-9]\\d{6}'},'preferredInternationalPrefix'=>'8~10','countryCode'=>'993','generalDesc'=>{'nationalNumberPattern'=>'[1-6]\\d{7}'}};
}

1;
