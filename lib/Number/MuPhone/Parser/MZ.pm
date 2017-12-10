package Number::MuPhone::Parser::MZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'fixedLine'=>{'nationalNumberPattern'=>'2(?:[1346]\\d|5[0-2]|[78][12]|93)\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'21123456'},'mobile'=>{'nationalNumberPattern'=>'8[2-7]\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'821234567'},'CountryCode'=>'MZ','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'2|8[2-7]','pattern'=>'([28]\\d)(\\d{3})(\\d{3,4})'},{'format'=>'$1 $2 $3','pattern'=>'(80\\d)(\\d{3})(\\d{3})','leadingDigits'=>'80'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000091/en'},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}'},'TerritoryName'=>'Mozambique','generalDesc'=>{'nationalNumberPattern'=>'[28]\\d{7,8}'},'countryCode'=>'258'};
}

1;
