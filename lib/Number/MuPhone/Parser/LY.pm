package Number::MuPhone::Parser::LY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[25679]\\d{8}'},'countryCode'=>'218','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'([25679]\\d)(\\d{7})','format'=>'$1-$2'}]},'TerritoryName'=>'Libya (Soc. People’s Libyan Arab Jamahiriya)','references'=>{'sourceUrl'=>'http://hlc.ly/price.php'},'CountryCode'=>'LY','fixedLine'=>{'nationalNumberPattern'=>'(?:2[1345]|5[1347]|6[123479]|71)\\d{7}','possibleLengths'=>{'localOnly'=>'7','national'=>'9'},'exampleNumber'=>'212345678'},'mobile'=>{'nationalNumberPattern'=>'9[1-6]\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'912345678'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0'};
}

1;
