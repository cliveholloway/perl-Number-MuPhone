package Number::MuPhone::Parser::ZM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefix'=>'0','internationalPrefix'=>'00','nationalPrefixFormattingRule'=>'$NP$FG','mobile'=>{'exampleNumber'=>'955123456','nationalNumberPattern'=>'9(?:5[034589]|[67]\\d)\\d{6}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'exampleNumber'=>'211234567','nationalNumberPattern'=>'21[1-8]\\d{6}','possibleLengths'=>{'national'=>'9'}},'CountryCode'=>'ZM','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000E8/en'},'tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'800\\d{6}','possibleLengths'=>{'national'=>'9'}},'TerritoryName'=>'Zambia','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'([29]\\d)(\\d{7})','leadingDigits'=>'[29]'},{'format'=>'$1 $2 $3','pattern'=>'(800)(\\d{3})(\\d{3})','leadingDigits'=>'8'}]},'countryCode'=>'260','generalDesc'=>{'nationalNumberPattern'=>'[289]\\d{8}'}};
}

1;
