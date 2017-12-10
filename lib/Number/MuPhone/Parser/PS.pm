package Number::MuPhone::Parser::PS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'[2489]','pattern'=>'([2489])(2\\d{2})(\\d{4})'},{'format'=>'$1 $2 $3','leadingDigits'=>'5','pattern'=>'(5[69]\\d)(\\d{3})(\\d{3})'},{'format'=>'$1 $2 $3','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'1[78]','pattern'=>'(1[78]00)(\\d{3})(\\d{3})'}]},'TerritoryName'=>'Palestinian Authority','sharedCost'=>{'nationalNumberPattern'=>'1700\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'1700123456'},'references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/%2B970','http://www.wtng.info/wtng-970-ps.html','http://www.paltel.ps']},'tollFree'=>{'exampleNumber'=>'1800123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'1800\\d{6}'},'CountryCode'=>'PS','fixedLine'=>{'nationalNumberPattern'=>'(?:22[234789]|42[45]|82[01458]|92[369])\\d{5}','possibleLengths'=>{'national'=>'8','localOnly'=>'7'},'exampleNumber'=>'22234567'},'mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'5[69]\\d{7}','exampleNumber'=>'599123456'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0','premiumRate'=>{'possibleLengths'=>{'national'=>'4,5'},'nationalNumberPattern'=>'1(?:4|9\\d)\\d{2}','exampleNumber'=>'19123'},'generalDesc'=>{'nationalNumberPattern'=>'[24589]\\d{7,8}|1(?:[78]\\d{8}|[49]\\d{2,3})'},'countryCode'=>'970'};
}

1;
