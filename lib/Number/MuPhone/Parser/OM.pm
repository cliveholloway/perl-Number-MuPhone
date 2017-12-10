package Number::MuPhone::Parser::OM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'OM','mobile'=>{'exampleNumber'=>'92123456','nationalNumberPattern'=>'7[19]\\d{6}|9(?:0[1-9]|[1-9]\\d)\\d{5}','possibleLengths'=>{'national'=>'8'}},'fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'2[2-6]\\d{6}','exampleNumber'=>'23123456'},'internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','leadingDigits'=>'2','pattern'=>'(2\\d)(\\d{6})'},{'leadingDigits'=>'[79]','pattern'=>'([79]\\d{3})(\\d{4})','format'=>'$1 $2'},{'leadingDigits'=>'[58]','pattern'=>'([58]00)(\\d{4,6})','format'=>'$1 $2'}]},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Oman','tollFree'=>{'possibleLengths'=>{'national'=>'[7-9]'},'nationalNumberPattern'=>'8007\\d{4,5}|500\\d{4}','exampleNumber'=>'80071234'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200009F/en'},'generalDesc'=>{'nationalNumberPattern'=>'(?:5|[279]\\d)\\d{6}|800\\d{5,6}'},'countryCode'=>'968','premiumRate'=>{'nationalNumberPattern'=>'900\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'90012345'}};
}

1;
