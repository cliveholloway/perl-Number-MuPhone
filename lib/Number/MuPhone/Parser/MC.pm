package Number::MuPhone::Parser::MC;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'377','generalDesc'=>{'nationalNumberPattern'=>'[34689]\\d{7,8}'},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','CountryCode'=>'MC','fixedLine'=>{'nationalNumberPattern'=>'870\\d{5}|9[2-47-9]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'99123456'},'mobile'=>{'nationalNumberPattern'=>'3\\d{7}|4(?:4\\d|5[1-9])\\d{5}|6\\d{8}','possibleLengths'=>{'national'=>'8,9'},'exampleNumber'=>'612345678'},'TerritoryName'=>'Monaco','noInternationalDialling'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'870\\d{5}','exampleNumber'=>'87012345'},'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'90\\d{6}','exampleNumber'=>'90123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200008D/en'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'[39]','nationalPrefixFormattingRule'=>'$FG'},{'leadingDigits'=>'4','pattern'=>'(\\d{2})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'pattern'=>'(6)(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'6','format'=>'$1 $2 $3 $4 $5'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{2})','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'8'}]}};
}

1;
