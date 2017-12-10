package Number::MuPhone::Parser::UY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'TerritoryName'=>'Uruguay','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000E0/en','http://www.ursec.gub.uy','http://en.wikipedia.org/wiki/Telephone_numbers_in_Uruguay']},'tollFree'=>{'exampleNumber'=>'8001234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'80[05]\\d{4}'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'[24]'},{'pattern'=>'(\\d{2})(\\d{3})(\\d{3})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'9[1-9]','format'=>'$1 $2 $3'},{'nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'[89]0','pattern'=>'(\\d{3})(\\d{4})','format'=>'$1 $2'}]},'nationalPrefix'=>'0','internationalPrefix'=>'0(?:1[3-9]\\d|0)','CountryCode'=>'UY','mobile'=>{'exampleNumber'=>'94231234','nationalNumberPattern'=>'9[1-9]\\d{6}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'possibleLengths'=>{'national'=>'8','localOnly'=>'7'},'nationalNumberPattern'=>'2\\d{7}|4[2-7]\\d{6}','exampleNumber'=>'21231234'},'premiumRate'=>{'exampleNumber'=>'9001234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'90[0-8]\\d{4}'},'preferredInternationalPrefix'=>'00','countryCode'=>'598','preferredExtnPrefix'=>' int. ','generalDesc'=>{'nationalNumberPattern'=>'[2489]\\d{6,7}'}};
}

1;
