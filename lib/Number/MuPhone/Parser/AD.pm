package Number::MuPhone::Parser::AD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000005/en'},'tollFree'=>{'nationalNumberPattern'=>'180[02]\\d{4}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'18001234'},'noInternationalDialling'=>{'nationalNumberPattern'=>'1800\\d{4}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'18000000'},'TerritoryName'=>'Andorra','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'[137-9]|6[0-8]','pattern'=>'(\\d{3})(\\d{3})'},{'pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'180[02]','format'=>'$1 $2'},{'format'=>'$1 $2 $3','leadingDigits'=>'690','pattern'=>'(\\d{3})(\\d{3})(\\d{3})'}]},'internationalPrefix'=>'00','fixedLine'=>{'possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'[78]\\d{5}','exampleNumber'=>'712345'},'mobile'=>{'exampleNumber'=>'312345','nationalNumberPattern'=>'(?:3\\d|6(?:[0-8]|90\\d{2}))\\d{4}','possibleLengths'=>{'national'=>'6,9'}},'CountryCode'=>'AD','premiumRate'=>{'exampleNumber'=>'912345','possibleLengths'=>{'national'=>'6'},'nationalNumberPattern'=>'[19]\\d{5}'},'countryCode'=>'376','generalDesc'=>{'nationalNumberPattern'=>'[16]\\d{5,8}|[37-9]\\d{5}'}};
}

1;
