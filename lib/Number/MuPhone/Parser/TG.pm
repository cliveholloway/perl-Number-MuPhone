package Number::MuPhone::Parser::TG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'TG','fixedLine'=>{'nationalNumberPattern'=>'2(?:2[2-7]|3[23]|44|55|66|77)\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'22212345'},'mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'9[0-36-9]\\d{6}','exampleNumber'=>'90112345'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'[29]','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'French Southern Territories','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000D1/en'},'generalDesc'=>{'nationalNumberPattern'=>'[29]\\d{7}'},'countryCode'=>'228'};
}

1;
