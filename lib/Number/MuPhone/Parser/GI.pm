package Number::MuPhone::Parser::GI;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[256]\\d{7}'},'countryCode'=>'350','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'2','pattern'=>'(\\d{3})(\\d{5})'}]},'TerritoryName'=>'Gibraltar','references'=>{'sourceUrl'=>'http://www.gra.gi/communications/numbering-plan'},'CountryCode'=>'GI','mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:5[46-8]|62)\\d{6}','exampleNumber'=>'57123456'},'fixedLine'=>{'exampleNumber'=>'20012345','nationalNumberPattern'=>'2(?:00\\d{2}|1(?:6[24-7]\\d|90[0-2])|2(?:2[2457]\\d|50[0-2]))\\d{3}','possibleLengths'=>{'national'=>'8'}},'internationalPrefix'=>'00'};
}

1;
