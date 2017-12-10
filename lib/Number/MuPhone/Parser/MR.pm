package Number::MuPhone::Parser::MR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'222','generalDesc'=>{'nationalNumberPattern'=>'[2-48]\\d{7}'},'internationalPrefix'=>'00','fixedLine'=>{'exampleNumber'=>'35123456','nationalNumberPattern'=>'25[08]\\d{5}|35\\d{6}|45[1-7]\\d{5}','possibleLengths'=>{'national'=>'8'}},'mobile'=>{'nationalNumberPattern'=>'[234][0-46-9]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'22123456'},'CountryCode'=>'MR','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000087/en','http://are.mr/pdfs/pnn2010.pdf']},'tollFree'=>{'nationalNumberPattern'=>'800\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'80012345'},'TerritoryName'=>'Mauritania','availableFormats'=>{'numberFormat'=>[{'pattern'=>'([2-48]\\d)(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'','format'=>'$1 $2 $3 $4'}]}};
}

1;
