package Number::MuPhone::Parser::MD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'exampleNumber'=>'80312345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'803\\d{5}'},'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'22|3','pattern'=>'(\\d{2})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'leadingDigits'=>'2[13-9]|[5-7]','pattern'=>'([25-7]\\d{2})(\\d{2})(\\d{3})','format'=>'$1 $2 $3'},{'pattern'=>'([89]\\d{2})(\\d{5})','leadingDigits'=>'[89]','format'=>'$1 $2'}]},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'800\\d{5}','exampleNumber'=>'80012345'},'TerritoryName'=>'Moldova, Rep. of','sharedCost'=>{'nationalNumberPattern'=>'808\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'80812345'},'mobile'=>{'exampleNumber'=>'62112345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:562|6\\d{2}|7(?:[189]\\d|6[07]|7[457-9]))\\d{5}'},'nationalPrefix'=>'0','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'3[08]\\d{6}','exampleNumber'=>'30123456'},'internationalPrefix'=>'00','premiumRate'=>{'exampleNumber'=>'90012345','nationalNumberPattern'=>'90[056]\\d{5}','possibleLengths'=>{'national'=>'8'}},'generalDesc'=>{'nationalNumberPattern'=>'[235-9]\\d{7}'},'countryCode'=>'373','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200008C/en','http://anrceti.md/fileupload/58','http://en.anrceti.md/resurse_numerotare_tel_mobila']},'mobileNumberPortableRegion'=>'true','fixedLine'=>{'exampleNumber'=>'22212345','nationalNumberPattern'=>'(?:2[1-9]\\d|3[1-79]\\d|5(?:33|5[257]))\\d{5}','possibleLengths'=>{'national'=>'8'}},'CountryCode'=>'MD','nationalPrefixFormattingRule'=>'$NP$FG'};
}

1;
