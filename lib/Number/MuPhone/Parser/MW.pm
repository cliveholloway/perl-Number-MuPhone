package Number::MuPhone::Parser::MW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'265','generalDesc'=>{'nationalNumberPattern'=>'(?:1(?:\\d{2})?|[2789]\\d{2})\\d{6}'},'internationalPrefix'=>'00','nationalPrefix'=>'0','nationalPrefixFormattingRule'=>'$NP$FG','fixedLine'=>{'exampleNumber'=>'1234567','nationalNumberPattern'=>'(?:1[2-9]|21\\d{2})\\d{5}','possibleLengths'=>{'national'=>'7,9'}},'mobile'=>{'exampleNumber'=>'991234567','nationalNumberPattern'=>'(?:111|77\\d|88\\d|99\\d)\\d{6}','possibleLengths'=>{'national'=>'9'}},'CountryCode'=>'MW','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000080/en'},'TerritoryName'=>'Malawi','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d)(\\d{3})(\\d{3})','leadingDigits'=>'1','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','leadingDigits'=>'2','pattern'=>'(2\\d{2})(\\d{3})(\\d{3})'},{'format'=>'$1 $2 $3 $4','leadingDigits'=>'[1789]','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}]}};
}

1;
