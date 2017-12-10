package Number::MuPhone::Parser::CD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'12','pattern'=>'(\\d{2})(\\d{3})(\\d{4})','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'8[0-2459]|9'},{'format'=>'$1 $2 $3','leadingDigits'=>'88','pattern'=>'(\\d{2})(\\d{2})(\\d{3})'},{'format'=>'$1 $2','leadingDigits'=>'[1-6]','pattern'=>'(\\d{2})(\\d{5})'}]},'TerritoryName'=>'Congo, Dem. Rep. of the (formerly Zaire)','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000037/en'},'CountryCode'=>'CD','fixedLine'=>{'possibleLengths'=>{'national'=>'7,9'},'nationalNumberPattern'=>'1(?:2\\d{7}|\\d{6})|[2-6]\\d{6}','exampleNumber'=>'1234567'},'mobile'=>{'exampleNumber'=>'991234567','nationalNumberPattern'=>'8(?:[0-2459]\\d{2}|8)\\d{5}|9[017-9]\\d{7}','possibleLengths'=>{'national'=>'7,9'}},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[2-6]\\d{6}|[18]\\d{6,8}|9\\d{8}'},'countryCode'=>'243'};
}

1;
