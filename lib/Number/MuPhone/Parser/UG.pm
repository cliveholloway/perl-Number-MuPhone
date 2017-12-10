package Number::MuPhone::Parser::UG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{3})(\\d{6})','leadingDigits'=>'[7-9]|20(?:[013-8]|2[5-9])|4(?:6[45]|[7-9])'},{'format'=>'$1 $2','leadingDigits'=>'3|4(?:[1-5]|6[0-36-9])','pattern'=>'(\\d{2})(\\d{7})'},{'format'=>'$1 $2','leadingDigits'=>'2024','pattern'=>'(2024)(\\d{5})'}]},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000F1/en','http://www.ucc.co.ug/licensing/ugandaNumberingPlan.pdf']},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800[123]\\d{5}'},'TerritoryName'=>'Uganda','mobile'=>{'exampleNumber'=>'712345678','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'7(?:(?:0[0-7]|[15789]\\d|30|4[0-4])\\d|2(?:[03]\\d|60))\\d{5}'},'fixedLine'=>{'exampleNumber'=>'312345678','nationalNumberPattern'=>'20(?:[0147]\\d{2}|2(?:40|[5-9]\\d)|3(?:0[0-4]|[23]\\d)|5[0-4]\\d|6[035-9]\\d|8[0-2]\\d)\\d{4}|[34]\\d{8}','possibleLengths'=>{'localOnly'=>'[5-7]','national'=>'9'}},'CountryCode'=>'UG','internationalPrefix'=>'00[057]','nationalPrefix'=>'0','nationalPrefixFormattingRule'=>'$NP$FG','premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'90[123]\\d{6}','exampleNumber'=>'901123456'},'generalDesc'=>{'nationalNumberPattern'=>'\\d{9}'},'countryCode'=>'256'};
}

1;
