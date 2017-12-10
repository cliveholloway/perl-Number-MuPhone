package Number::MuPhone::Parser::BJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'uan'=>{'exampleNumber'=>'81123456','nationalNumberPattern'=>'81\\d{6}','possibleLengths'=>{'national'=>'8'}},'generalDesc'=>{'nationalNumberPattern'=>'[2689]\\d{7}|7\\d{3}'},'countryCode'=>'229','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'}]},'tollFree'=>{'nationalNumberPattern'=>'7[3-5]\\d{2}','possibleLengths'=>{'national'=>'4'},'exampleNumber'=>'7312'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000017/en'},'TerritoryName'=>'Benin','fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2(?:02|1[037]|2[45]|3[68])\\d{5}','exampleNumber'=>'20211234'},'mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:6[1-8]|9[03-9])\\d{6}','exampleNumber'=>'90011234'},'CountryCode'=>'BJ','voip'=>{'exampleNumber'=>'85751234','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'857[58]\\d{4}'},'internationalPrefix'=>'00'};
}

1;
