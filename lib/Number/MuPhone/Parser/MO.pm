package Number::MuPhone::Parser::MO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'853','generalDesc'=>{'nationalNumberPattern'=>'[268]\\d{7}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200007E/en','http://www.dsrt.gov.mo/web/en/generalinfo/allocatednum']},'TerritoryName'=>'Macao, China','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'([268]\\d{3})(\\d{4})','leadingDigits'=>''}]},'internationalPrefix'=>'00','mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'6(?:[2356]\\d|8[158])\\d{5}','exampleNumber'=>'66123456'},'fixedLine'=>{'nationalNumberPattern'=>'(?:28[2-57-9]|8[2-57-9]\\d)\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'28212345'},'CountryCode'=>'MO'};
}

1;
