package Number::MuPhone::Parser::MN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'976','generalDesc'=>{'nationalNumberPattern'=>'[12]\\d{7,9}|[57-9]\\d{7}'},'TerritoryName'=>'Mongolia','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200008E/en'},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'([12]\\d)(\\d{2})(\\d{4})','leadingDigits'=>'[12]1','format'=>'$1 $2 $3'},{'format'=>'$1 $2','pattern'=>'([12]2\\d)(\\d{5,6})','leadingDigits'=>'[12]2[1-3]'},{'format'=>'$1 $2','leadingDigits'=>'[12](?:27|[3-5]\\d)2','pattern'=>'([12]\\d{3})(\\d{5})'},{'leadingDigits'=>'[57-9]','nationalPrefixFormattingRule'=>'$FG','pattern'=>'(\\d{4})(\\d{4})','format'=>'$1 $2'},{'format'=>'$1 $2','leadingDigits'=>'[12](?:27|[3-5]\\d)[4-9]','pattern'=>'([12]\\d{4})(\\d{4,5})'}]},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'7[05-8]\\d{6}','exampleNumber'=>'75123456'},'internationalPrefix'=>'001','CountryCode'=>'MN','fixedLine'=>{'nationalNumberPattern'=>'[12](?:1\\d|2(?:[1-3]\\d?|7\\d)|3[2-8]\\d{1,2}|4[2-68]\\d{1,2}|5[1-4689]\\d{1,2})\\d{5}|5[0568]\\d{6}','possibleLengths'=>{'localOnly'=>'6,7','national'=>'[8-10]'},'exampleNumber'=>'50123456'},'mobile'=>{'exampleNumber'=>'88123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:8(?:[05689]\\d|3[01])|9[013-9]\\d)\\d{5}'}};
}

1;
