package Number::MuPhone::Parser::CM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4 $5','leadingDigits'=>'[26]','pattern'=>'([26])(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'format'=>'$1 $2 $3 $4','leadingDigits'=>'[23]|88','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}]},'TerritoryName'=>'Cameroon','tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'88\\d{6}','exampleNumber'=>'88012345'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000024/en','http://www.itu.int/dms_pub/itu-t/opb/sp/T-SP-OB.1063-2014-OAS-PDF-E.pdf']},'CountryCode'=>'CM','mobile'=>{'exampleNumber'=>'671234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'6[5-9]\\d{7}'},'fixedLine'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'2(?:22|33|4[23])\\d{6}','exampleNumber'=>'222123456'},'internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[2368]\\d{7,8}'},'countryCode'=>'237'};
}

1;
