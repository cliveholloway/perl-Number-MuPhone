package Number::MuPhone::Parser::ML;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'TerritoryName'=>'Mali','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000083/en','http://crt-mali.org/pdf/plan_num']},'tollFree'=>{'nationalNumberPattern'=>'80\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'80012345'},'noInternationalDialling'=>{'exampleNumber'=>'80012345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'80\\d{6}'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'[246-9]','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'intlFormat'=>'NA','pattern'=>'(\\d{4})','leadingDigits'=>'67|74','format'=>'$1'}]},'internationalPrefix'=>'00','CountryCode'=>'ML','mobile'=>{'exampleNumber'=>'65012345','nationalNumberPattern'=>'(?:2(?:079|17\\d)|[679]\\d{3}|8[239]\\d{2})\\d{4}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'nationalNumberPattern'=>'(?:2(?:0(?:2\\d|7[0-8])|1(?:2[5-7]|[3-689]\\d))|44[1239]\\d)\\d{4}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'20212345'},'countryCode'=>'223','generalDesc'=>{'nationalNumberPattern'=>'[246-9]\\d{7}'}};
}

1;
