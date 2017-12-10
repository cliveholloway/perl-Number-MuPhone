package Number::MuPhone::Parser::DJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200003A/en'},'TerritoryName'=>'Djibouti','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>''}]},'internationalPrefix'=>'00','mobile'=>{'exampleNumber'=>'77831001','nationalNumberPattern'=>'77\\d{6}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'21360003','nationalNumberPattern'=>'2(?:1[2-5]|7[45])\\d{5}','possibleLengths'=>{'national'=>'8'}},'CountryCode'=>'DJ','countryCode'=>'253','generalDesc'=>{'nationalNumberPattern'=>'[27]\\d{7}'}};
}

1;
