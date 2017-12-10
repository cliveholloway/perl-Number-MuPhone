package Number::MuPhone::Parser::SN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'SN','fixedLine'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'3(?:0(?:1[0-2]|80)|282|3(?:8[1-9]|9[3-9])|611)\\d{5}','exampleNumber'=>'301012345'},'mobile'=>{'exampleNumber'=>'701234567','nationalNumberPattern'=>'7(?:[06-8]\\d|21|90)\\d{6}','possibleLengths'=>{'national'=>'9'}},'voip'=>{'exampleNumber'=>'933301234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'39[01]\\d{6}|3392\\d{5}|93330\\d{4}'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'[379]','format'=>'$1 $2 $3 $4'},{'format'=>'$1 $2 $3 $4','leadingDigits'=>'8','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}]},'sharedCost'=>{'exampleNumber'=>'810123456','nationalNumberPattern'=>'81[02468]\\d{6}','possibleLengths'=>{'national'=>'9'}},'TerritoryName'=>'Senegal','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000B8/en','http://www.artpsenegal.net/index.php?option=com_content&view=article&id=50']},'tollFree'=>{'nationalNumberPattern'=>'800\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'800123456'},'generalDesc'=>{'nationalNumberPattern'=>'[3789]\\d{8}'},'countryCode'=>'221','premiumRate'=>{'nationalNumberPattern'=>'88[4689]\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'884123456'}};
}

1;
