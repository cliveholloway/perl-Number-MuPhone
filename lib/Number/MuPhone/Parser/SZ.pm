package Number::MuPhone::Parser::SZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'tollFree'=>{'exampleNumber'=>'08001234','nationalNumberPattern'=>'0800\\d{4}','possibleLengths'=>{'national'=>'8'}},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000C6/en'},'noInternationalDialling'=>{'nationalNumberPattern'=>'0800\\d{4}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'08001234'},'TerritoryName'=>'Swaziland','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'[027]'}]},'internationalPrefix'=>'00','fixedLine'=>{'exampleNumber'=>'22171234','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2[2-5]\\d{6}'},'mobile'=>{'exampleNumber'=>'76123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'7[6-8]\\d{6}'},'CountryCode'=>'SZ','countryCode'=>'268','generalDesc'=>{'nationalNumberPattern'=>'[027]\\d{7}'}};
}

1;
