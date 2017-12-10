package Number::MuPhone::Parser::LA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'LA','mobile'=>{'exampleNumber'=>'2023123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'20(?:2[2389]|5[24-689]|7[6-8]|9[15-9])\\d{6}'},'fixedLine'=>{'exampleNumber'=>'21212862','possibleLengths'=>{'localOnly'=>'6','national'=>'8,9'},'nationalNumberPattern'=>'(?:2[13]|3(?:0\\d|[14])|[5-7][14]|41|8[1468])\\d{6}'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'20','pattern'=>'(20)(\\d{2})(\\d{3})(\\d{3})'},{'leadingDigits'=>'2[13]|3[14]|[4-8]','pattern'=>'([2-8]\\d)(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'leadingDigits'=>'30','pattern'=>'(30)(\\d{2})(\\d{2})(\\d{3})','format'=>'$1 $2 $3 $4'}]},'TerritoryName'=>'Lao People\'s Dem. Rep.','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000075/en','http://en.wikipedia.org/wiki/+856']},'generalDesc'=>{'nationalNumberPattern'=>'[2-8]\\d{7,9}'},'countryCode'=>'856'};
}

1;
