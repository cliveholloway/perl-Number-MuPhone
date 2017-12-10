package Number::MuPhone::Parser::CY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'','pattern'=>'(\\d{2})(\\d{6})','format'=>'$1 $2'}]},'TerritoryName'=>'Cyprus','sharedCost'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'80[1-9]\\d{5}','exampleNumber'=>'80112345'},'mobileNumberPortableRegion'=>'true','tollFree'=>{'exampleNumber'=>'80001234','nationalNumberPattern'=>'800\\d{5}','possibleLengths'=>{'national'=>'8'}},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000034/en'},'CountryCode'=>'CY','mobile'=>{'exampleNumber'=>'96123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'9[4-79]\\d{6}'},'fixedLine'=>{'nationalNumberPattern'=>'2[2-6]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'22345678'},'internationalPrefix'=>'00','premiumRate'=>{'nationalNumberPattern'=>'90[09]\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'90012345'},'uan'=>{'nationalNumberPattern'=>'(?:50|77)\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'77123456'},'personalNumber'=>{'exampleNumber'=>'70012345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'700\\d{5}'},'generalDesc'=>{'nationalNumberPattern'=>'[257-9]\\d{7}'},'countryCode'=>'357'};
}

1;
