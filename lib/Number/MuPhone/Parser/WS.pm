package Number::MuPhone::Parser::WS;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'fixedLine'=>{'nationalNumberPattern'=>'(?:[2-5]\\d|6[1-9]|84\\d{2})\\d{3}','possibleLengths'=>{'national'=>'5,7'},'exampleNumber'=>'22123'},'mobile'=>{'nationalNumberPattern'=>'(?:60|7[25-7]\\d)\\d{4}','possibleLengths'=>{'national'=>'6,7'},'exampleNumber'=>'601234'},'CountryCode'=>'WS','internationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'(8\\d{2})(\\d{3,4})','leadingDigits'=>'8'},{'format'=>'$1 $2','leadingDigits'=>'7','pattern'=>'(7\\d)(\\d{5})'},{'pattern'=>'(\\d{5})','leadingDigits'=>'[2-6]','format'=>'$1'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000B4/en'},'tollFree'=>{'nationalNumberPattern'=>'800\\d{3}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'800123'},'TerritoryName'=>'Samoa','generalDesc'=>{'nationalNumberPattern'=>'[2-8]\\d{4,6}'},'countryCode'=>'685'};
}

1;
