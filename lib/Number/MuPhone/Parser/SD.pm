package Number::MuPhone::Parser::SD;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[19]\\d{8}'},'countryCode'=>'249','mobile'=>{'exampleNumber'=>'911231234','nationalNumberPattern'=>'9[0-3569]\\d{7}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'nationalNumberPattern'=>'1(?:[125]\\d|8[3567])\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'121231234'},'CountryCode'=>'SD','nationalPrefix'=>'0','internationalPrefix'=>'00','nationalPrefixFormattingRule'=>'$NP$FG','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{3})(\\d{4})'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000C4/en'},'TerritoryName'=>'Sudan'};
}

1;
