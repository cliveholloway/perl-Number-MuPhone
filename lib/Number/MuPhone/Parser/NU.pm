package Number::MuPhone::Parser::NU;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Niue','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000EC/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Niue']},'CountryCode'=>'NU','mobile'=>{'possibleLengths'=>{'national'=>'4'},'nationalNumberPattern'=>'[125]\\d{3}','exampleNumber'=>'1234'},'fixedLine'=>{'possibleLengths'=>{'national'=>'4'},'nationalNumberPattern'=>'[34]\\d{3}','exampleNumber'=>'4002'},'internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[1-5]\\d{3}'},'countryCode'=>'683'};
}

1;
