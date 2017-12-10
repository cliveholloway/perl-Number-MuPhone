package Number::MuPhone::Parser::HT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'509','generalDesc'=>{'nationalNumberPattern'=>'[2-489]\\d{7}'},'internationalPrefix'=>'00','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:9(?:[67][0-4]|8[0-3589]|9\\d))\\d{5}','exampleNumber'=>'98901234'},'CountryCode'=>'HT','fixedLine'=>{'exampleNumber'=>'22453300','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2(?:2\\d|5[1-5]|81|9[149])\\d{5}'},'mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[34]\\d{7}','exampleNumber'=>'34101234'},'TerritoryName'=>'Haiti','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200005E/en','http://www.numberingplans.com/']},'tollFree'=>{'exampleNumber'=>'80012345','nationalNumberPattern'=>'8\\d{7}','possibleLengths'=>{'national'=>'8'}},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{2})(\\d{4})','leadingDigits'=>'','format'=>'$1 $2 $3'}]}};
}

1;
