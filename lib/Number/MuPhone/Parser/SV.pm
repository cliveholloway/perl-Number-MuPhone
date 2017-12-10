package Number::MuPhone::Parser::SV;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[267]','pattern'=>'(\\d{4})(\\d{4})','format'=>'$1 $2'},{'pattern'=>'(\\d{3})(\\d{4})','leadingDigits'=>'[89]','format'=>'$1 $2'},{'format'=>'$1 $2 $3','leadingDigits'=>'[89]','pattern'=>'(\\d{3})(\\d{4})(\\d{4})'}]},'TerritoryName'=>'El Salvador','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200003F/en','http://www.siget.gob.sv/BusquedaPublica.aspx?pagina=3&tipo=27&titulo=t8&sector=2&ordenar=&dir=DESC']},'tollFree'=>{'exampleNumber'=>'8001234','nationalNumberPattern'=>'800\\d{4}(?:\\d{4})?','possibleLengths'=>{'national'=>'7,11'}},'CountryCode'=>'SV','mobile'=>{'nationalNumberPattern'=>'[67]\\d{7}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'70123456'},'fixedLine'=>{'exampleNumber'=>'21234567','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2[1-6]\\d{6}'},'internationalPrefix'=>'00','premiumRate'=>{'exampleNumber'=>'9001234','nationalNumberPattern'=>'900\\d{4}(?:\\d{4})?','possibleLengths'=>{'national'=>'7,11'}},'generalDesc'=>{'nationalNumberPattern'=>'[267]\\d{7}|[89]\\d{6}(?:\\d{4})?'},'countryCode'=>'503'};
}

1;
