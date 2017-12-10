package Number::MuPhone::Parser::BN;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200001F/en'},'TerritoryName'=>'Brunei Darussalam','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'([2-578]\\d{2})(\\d{4})','leadingDigits'=>''}]},'internationalPrefix'=>'00','fixedLine'=>{'exampleNumber'=>'2345678','nationalNumberPattern'=>'2(?:[013-9]\\d|2[0-7])\\d{4}|[3-5]\\d{6}','possibleLengths'=>{'national'=>'7'}},'mobile'=>{'exampleNumber'=>'7123456','nationalNumberPattern'=>'22[89]\\d{4}|[78]\\d{6}','possibleLengths'=>{'national'=>'7'}},'CountryCode'=>'BN','countryCode'=>'673','generalDesc'=>{'nationalNumberPattern'=>'[2-578]\\d{6}'}};
}

1;
