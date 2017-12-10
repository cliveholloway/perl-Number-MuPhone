package Number::MuPhone::Parser::LV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobile'=>{'exampleNumber'=>'21234567','nationalNumberPattern'=>'2\\d{7}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'63123456','nationalNumberPattern'=>'6\\d{7}','possibleLengths'=>{'national'=>'8'}},'CountryCode'=>'LV','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'','pattern'=>'([2689]\\d)(\\d{3})(\\d{3})'}]},'tollFree'=>{'nationalNumberPattern'=>'80\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'80123456'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000076/en','http://en.wikipedia.org/wiki/+371']},'sharedCost'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'81\\d{6}','exampleNumber'=>'81123456'},'TerritoryName'=>'Latvia','mobileNumberPortableRegion'=>'true','generalDesc'=>{'nationalNumberPattern'=>'[2689]\\d{7}'},'countryCode'=>'371','premiumRate'=>{'exampleNumber'=>'90123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'90\\d{6}'}};
}

1;
