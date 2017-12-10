package Number::MuPhone::Parser::LR;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'2\\d{7,8}|[378]\\d{8}|4\\d{6}|5\\d{6,8}'},'countryCode'=>'231','premiumRate'=>{'exampleNumber'=>'332021234','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'332(?:02|[2-5]\\d)\\d{4}'},'fixedLine'=>{'possibleLengths'=>{'national'=>'8,9'},'nationalNumberPattern'=>'(?:2\\d{3}|33333)\\d{4}','exampleNumber'=>'21234567'},'mobile'=>{'possibleLengths'=>{'national'=>'7,9'},'nationalNumberPattern'=>'(?:20\\d{2}|330\\d|4[67]|5(?:55)?\\d|77\\d{2}|88\\d{2})\\d{5}','exampleNumber'=>'770123456'},'CountryCode'=>'LR','nationalPrefix'=>'0','internationalPrefix'=>'00','nationalPrefixFormattingRule'=>'$NP$FG','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(2\\d)(\\d{3})(\\d{3})','leadingDigits'=>'2'},{'format'=>'$1 $2 $3','pattern'=>'([4-5])(\\d{3})(\\d{3})','leadingDigits'=>'[45]'},{'leadingDigits'=>'[23578]','pattern'=>'(\\d{2})(\\d{3})(\\d{4})','format'=>'$1 $2 $3'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000079/en'},'TerritoryName'=>'Liberia'};
}

1;
