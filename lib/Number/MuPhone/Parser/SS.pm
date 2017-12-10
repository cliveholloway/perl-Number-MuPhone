package Number::MuPhone::Parser::SS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','nationalPrefixFormattingRule'=>'$NP$FG','pattern'=>'(\\d{3})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'}]},'TerritoryName'=>'South Sudan','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000F9/en','http://en.wikipedia.org/wiki/+211']},'CountryCode'=>'SS','fixedLine'=>{'exampleNumber'=>'181234567','nationalNumberPattern'=>'18\\d{7}','possibleLengths'=>{'national'=>'9'}},'mobile'=>{'nationalNumberPattern'=>'(?:12|9[1257])\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'977123456'},'internationalPrefix'=>'00','nationalPrefix'=>'0','generalDesc'=>{'nationalNumberPattern'=>'[19]\\d{8}'},'countryCode'=>'211'};
}

1;
