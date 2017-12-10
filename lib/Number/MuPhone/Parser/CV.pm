package Number::MuPhone::Parser::CV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'internationalPrefix'=>'0','fixedLine'=>{'possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'2(?:2[1-7]|3[0-8]|4[12]|5[1256]|6\\d|7[1-3]|8[1-5])\\d{4}','exampleNumber'=>'2211234'},'mobile'=>{'exampleNumber'=>'9911234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'(?:9\\d|59)\\d{5}'},'CountryCode'=>'CV','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000026/en'},'TerritoryName'=>'Cape Verde','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'','format'=>'$1 $2 $3'}]},'countryCode'=>'238','generalDesc'=>{'nationalNumberPattern'=>'[259]\\d{6}'}};
}

1;
