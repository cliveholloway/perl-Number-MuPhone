package Number::MuPhone::Parser::GE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'995','generalDesc'=>{'nationalNumberPattern'=>'[34578]\\d{8}'},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}'},'noInternationalDialling'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'706\\d{6}','exampleNumber'=>'706123456'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000050/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Georgia_(country)']},'TerritoryName'=>'Georgia','mobileNumberPortableRegion'=>'true','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'[348]','format'=>'$1 $2 $3 $4'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{3})(\\d{3})(\\d{3})','nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'7'},{'format'=>'$1 $2 $3 $4','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'5','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}]},'internationalPrefix'=>'00','nationalPrefix'=>'0','voip'=>{'exampleNumber'=>'706123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'706\\d{6}'},'fixedLine'=>{'nationalNumberPattern'=>'(?:3(?:[256]\\d|4[124-9]|7[0-4])|4(?:1\\d|2[2-7]|3[1-79]|4[2-8]|7[239]|9[1-7]))\\d{6}','possibleLengths'=>{'national'=>'9','localOnly'=>'6'},'exampleNumber'=>'322123456'},'mobile'=>{'exampleNumber'=>'555123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'5(?:[14]4|5[0157-9]|68|7[0147-9]|9[0-35-9])\\d{6}'},'CountryCode'=>'GE'};
}

1;
