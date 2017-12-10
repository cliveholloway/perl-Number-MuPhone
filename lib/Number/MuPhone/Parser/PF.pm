package Number::MuPhone::Parser::PF;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'4[09]|8[79]','format'=>'$1 $2 $3 $4'},{'leadingDigits'=>'44','pattern'=>'(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3'}]},'noInternationalDialling'=>{'exampleNumber'=>'441234','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'44\\d{4}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200004D/en'},'TerritoryName'=>'French Polynesia (Tahiti) (Territoire français d\'outre-mer)','mobile'=>{'exampleNumber'=>'87123456','nationalNumberPattern'=>'8[79]\\d{6}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'exampleNumber'=>'40412345','possibleLengths'=>{'national'=>'6,8'},'nationalNumberPattern'=>'4(?:[09][45689]\\d|4)\\d{4}'},'CountryCode'=>'PF','internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'4\\d{5,7}|8\\d{7}'},'countryCode'=>'689'};
}

1;
