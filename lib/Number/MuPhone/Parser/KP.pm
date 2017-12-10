package Number::MuPhone::Parser::KP;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'1\\d{9}|[28]\\d{7}'},'countryCode'=>'850','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{4})','leadingDigits'=>'1'},{'format'=>'$1 $2 $3','pattern'=>'(\\d)(\\d{3})(\\d{4})','leadingDigits'=>'2'},{'format'=>'$1 $2 $3','leadingDigits'=>'8','pattern'=>'(\\d{2})(\\d{3})(\\d{3})'}]},'TerritoryName'=>'Korea, Dem. People\'s Rep. of','references'=>{'sourceUrl'=>'http://en.wikipedia.org/wiki/%2B850'},'noInternationalDialling'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2(?:[0-24-9]\\d{2}|3(?:[0-79]\\d|8[02-9]))\\d{4}','exampleNumber'=>'23821234'},'CountryCode'=>'KP','fixedLine'=>{'exampleNumber'=>'21234567','nationalNumberPattern'=>'2\\d{7}|85\\d{6}','possibleLengths'=>{'national'=>'8','localOnly'=>'6,7'}},'mobile'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'19[123]\\d{7}','exampleNumber'=>'1921234567'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00|99','nationalPrefix'=>'0'};
}

1;
