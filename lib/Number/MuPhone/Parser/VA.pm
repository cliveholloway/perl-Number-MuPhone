package Number::MuPhone::Parser::VA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'personalNumber'=>{'nationalNumberPattern'=>'1(?:78\\d|99)\\d{6}','possibleLengths'=>{'national'=>'9,10'},'exampleNumber'=>'1781234567'},'internationalPrefix'=>'00','voip'=>{'exampleNumber'=>'5512345678','nationalNumberPattern'=>'55\\d{8}','possibleLengths'=>{'national'=>'10'}},'mobile'=>{'nationalNumberPattern'=>'3(?:[12457-9]\\d{8}|6\\d{7,8}|3\\d{7,9})','possibleLengths'=>{'national'=>'[9-11]'},'exampleNumber'=>'3123456789'},'TerritoryName'=>'Vatican City','sharedCost'=>{'possibleLengths'=>{'national'=>'6,9'},'nationalNumberPattern'=>'84(?:[08]\\d{6}|[17]\\d{3})','exampleNumber'=>'848123456'},'tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'80(?:0\\d{6}|3\\d{3})','possibleLengths'=>{'national'=>'6,9'}},'noInternationalDialling'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'848\\d{6}','exampleNumber'=>'848123456'},'availableFormats'=>{'numberFormat'=>[]},'countryCode'=>'39','generalDesc'=>{'nationalNumberPattern'=>'(?:0(?:878\\d{5}|6698\\d{5})|[1589]\\d{5,10}|3(?:[12457-9]\\d{8}|[36]\\d{7,9}))'},'premiumRate'=>{'nationalNumberPattern'=>'0878\\d{5}|1(?:44|6[346])\\d{6}|89(?:2\\d{3}|4(?:[0-4]\\d{2}|[5-9]\\d{4})|5(?:[0-4]\\d{2}|[5-9]\\d{6})|9\\d{6})','possibleLengths'=>{'national'=>'6,[8-10]'},'exampleNumber'=>'899123456'},'CountryCode'=>'VA','fixedLine'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'06698\\d{5}','exampleNumber'=>'0669812345'},'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>'http://en.wikipedia.org/wiki/Telephone_numbers_in_Vatican_City'}};
}

1;
