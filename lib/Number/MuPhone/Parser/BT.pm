package Number::MuPhone::Parser::BT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'975','generalDesc'=>{'nationalNumberPattern'=>'[1-8]\\d{6,7}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000019/en'},'TerritoryName'=>'Bhutan','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'1|77'},{'format'=>'$1 $2 $3','leadingDigits'=>'[2-68]|7[246]','pattern'=>'([2-8])(\\d{3})(\\d{3})'}]},'internationalPrefix'=>'00','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'6','national'=>'7'},'nationalNumberPattern'=>'(?:2[3-6]|[34][5-7]|5[236]|6[2-46]|7[246]|8[2-4])\\d{5}','exampleNumber'=>'2345678'},'mobile'=>{'exampleNumber'=>'17123456','nationalNumberPattern'=>'(?:1[67]|77)\\d{6}','possibleLengths'=>{'national'=>'8'}},'CountryCode'=>'BT'};
}

1;
