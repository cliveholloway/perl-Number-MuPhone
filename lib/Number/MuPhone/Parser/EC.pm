package Number::MuPhone::Parser::EC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'EC','mobile'=>{'exampleNumber'=>'991234567','nationalNumberPattern'=>'9(?:(?:39|[45][89]|7[7-9]|[89]\\d)\\d|6(?:[017-9]\\d|2[0-4]))\\d{5}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'8'},'nationalNumberPattern'=>'[2-7][2-7]\\d{6}','exampleNumber'=>'22123456'},'nationalPrefixFormattingRule'=>'($NP$FG)','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[2-7]890\\d{4}','exampleNumber'=>'28901234'},'internationalPrefix'=>'00','nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[247]|[356][2-8]','intlFormat'=>'$1-$2-$3','pattern'=>'(\\d)(\\d{3})(\\d{4})','format'=>'$1 $2-$3'},{'pattern'=>'(\\d{2})(\\d{3})(\\d{4})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'9','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'1','pattern'=>'(1800)(\\d{3})(\\d{3,4})'}]},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Ecuador','references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/+593','http://www.conatel.gob.ec/site_conatel/index.php?option=com_content&view=category&layout=blog&id=52&Itemid=153','http://www.itu.int/oth/T020200003D/en']},'tollFree'=>{'exampleNumber'=>'18001234567','nationalNumberPattern'=>'1800\\d{6,7}','possibleLengths'=>{'national'=>'10,11'}},'generalDesc'=>{'nationalNumberPattern'=>'1\\d{9,10}|[2-8]\\d{7}|9\\d{8}'},'countryCode'=>'593'};
}

1;
