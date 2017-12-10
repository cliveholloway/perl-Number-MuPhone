package Number::MuPhone::Parser::AX;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'exampleNumber'=>'10112345','nationalNumberPattern'=>'10(?:0\\d{4,6}|[1-9]\\d{5,7})|2(?:0(?:0\\d{4,6}|[13-8]\\d{5,7}|2(?:[023]\\d{4,5}|[14-9]\\d{4,6})|9(?:[0-7]\\d{4,6}|[89]\\d{1,6}))|9\\d{6,8})|3(?:0(?:0\\d{3,7}|[1-57-9]\\d{5,7}|6(?:\\d{3}|\\d{5,7}))|93\\d{5,7})|60(?:[12]\\d{5,6}|6\\d{7})|7(?:1\\d{7}|3\\d{8}|5[03-9]\\d{5,6})','possibleLengths'=>{'national'=>'[5-10]'}},'availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Åland Islands.','tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'800\\d{5,6}','possibleLengths'=>{'national'=>'8,9'}},'noInternationalDialling'=>{'nationalNumberPattern'=>'100\\d{4,6}|20(?:0\\d{4,6}|2[023]\\d{4,5}|9[89]\\d{1,6})|300\\d{3,7}|60(?:[12]\\d{5,6}|6\\d{7})|7(?:1\\d{7}|3\\d{8}|5[03-9]\\d{5,6})','possibleLengths'=>{'national'=>'[5-10]'},'exampleNumber'=>'1001234'},'mobile'=>{'exampleNumber'=>'412345678','nationalNumberPattern'=>'4(?:[0-8]\\d{6,8}|9\\d{9})|50\\d{6,8}','possibleLengths'=>{'national'=>'[8-11]'}},'internationalPrefix'=>'00|99(?:[02469]|5(?:11|33|5[59]|88|9[09]))','nationalPrefix'=>'0','preferredInternationalPrefix'=>'00','premiumRate'=>{'exampleNumber'=>'600123456','possibleLengths'=>{'national'=>'8,9'},'nationalNumberPattern'=>'[67]00\\d{5,6}'},'generalDesc'=>{'nationalNumberPattern'=>'[15]\\d{6,9}|2\\d{4,9}|3\\d{5,9}|4\\d{7,10}|[67]\\d{7,9}|8\\d{7,8}'},'countryCode'=>'358','references'=>{'sourceUrl'=>'https://www.viestintavirasto.fi/internetpuhelin/puhelinverkonnumerointi.html'},'CountryCode'=>'AX','fixedLine'=>{'exampleNumber'=>'181234567','possibleLengths'=>{'national'=>'[7-9]'},'nationalNumberPattern'=>'18[1-8]\\d{4,6}'},'nationalPrefixFormattingRule'=>'$NP$FG'};
}

1;
