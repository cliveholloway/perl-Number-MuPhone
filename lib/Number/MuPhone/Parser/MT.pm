package Number::MuPhone::Parser::MT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'356','generalDesc'=>{'nationalNumberPattern'=>'[2357-9]\\d{7}'},'pager'=>{'exampleNumber'=>'71171234','nationalNumberPattern'=>'7117\\d{4}','possibleLengths'=>{'national'=>'8'}},'premiumRate'=>{'nationalNumberPattern'=>'5(?:0(?:0(?:37|43)|6\\d{2}|70\\d|9[0168]\\d)|[12]\\d0[1-5])\\d{3}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'50037123'},'uan'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'501\\d{5}','exampleNumber'=>'50112345'},'internationalPrefix'=>'00','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'3550\\d{4}','exampleNumber'=>'35501234'},'CountryCode'=>'MT','mobile'=>{'exampleNumber'=>'96961234','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:7(?:210|[79]\\d{2})|9(?:2(?:1[01]|31)|696|8(?:1[1-3]|89|97)|9\\d{2}))\\d{4}'},'fixedLine'=>{'exampleNumber'=>'21001234','nationalNumberPattern'=>'2(?:0(?:1[0-6]|3[1-4]|[69]\\d)|[1-357]\\d{2})\\d{4}','possibleLengths'=>{'national'=>'8'}},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Malta','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000084/en','http://www.mca.org.mt']},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'800[3467]\\d{4}','exampleNumber'=>'80071234'},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'','format'=>'$1 $2'}]}};
}

1;
