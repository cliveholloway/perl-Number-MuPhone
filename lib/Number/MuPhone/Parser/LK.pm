package Number::MuPhone::Parser::LK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'LK','fixedLine'=>{'nationalNumberPattern'=>'(?:[189]1|2[13-7]|3[1-8]|4[157]|5[12457]|6[35-7])[2-57]\\d{6}','possibleLengths'=>{'localOnly'=>'7','national'=>'9'},'exampleNumber'=>'112345678'},'mobile'=>{'exampleNumber'=>'712345678','nationalNumberPattern'=>'7[0125-8]\\d{7}','possibleLengths'=>{'national'=>'9'}},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{1})(\\d{6})','leadingDigits'=>'[1-689]','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{2})(\\d{3})(\\d{4})','leadingDigits'=>'7'}]},'TerritoryName'=>'Sri Lanka','references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/%2B94','http://www.itu.int/oth/T02020000C3/en']},'generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{8}'},'countryCode'=>'94'};
}

1;
