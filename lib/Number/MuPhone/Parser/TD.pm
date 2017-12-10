package Number::MuPhone::Parser::TD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'TD','mobile'=>{'exampleNumber'=>'63012345','nationalNumberPattern'=>'(?:6[023568]\\d|77\\d|9\\d{2})\\d{5}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'22501234','nationalNumberPattern'=>'22(?:[3789]0|5[0-5]|6[89])\\d{4}','possibleLengths'=>{'national'=>'8'}},'internationalPrefix'=>'00|16','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Chad','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000029/en'},'generalDesc'=>{'nationalNumberPattern'=>'[2679]\\d{7}'},'countryCode'=>'235','preferredInternationalPrefix'=>'00'};
}

1;
