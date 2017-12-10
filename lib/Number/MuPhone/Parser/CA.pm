package Number::MuPhone::Parser::CA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[2-9]\\d{9}|3\\d{6}'},'personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'countryCode'=>'1','premiumRate'=>{'exampleNumber'=>'9002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'CountryCode'=>'CA','fixedLine'=>{'nationalNumberPattern'=>'(?:2(?:04|[23]6|[48]9|50)|3(?:06|43|65)|4(?:03|1[68]|3[178]|50)|5(?:06|1[49]|48|79|8[17])|6(?:0[04]|13|22|39|47)|7(?:0[59]|78|8[02])|8(?:[06]7|19|25|73)|90[25])[2-9]\\d{6}|310\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'exampleNumber'=>'2042345678'},'mobile'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'(?:2(?:04|[23]6|[48]9|50)|3(?:06|43|65)|4(?:03|1[68]|3[178]|50)|5(?:06|1[49]|48|79|8[17])|6(?:0[04]|13|22|39|47)|7(?:0[59]|78|8[02])|8(?:[06]7|19|25|73)|90[25])[2-9]\\d{6}','exampleNumber'=>'2042345678'},'nationalPrefix'=>'1','internationalPrefix'=>'011','availableFormats'=>{'numberFormat'=>[]},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Canada','tollFree'=>{'possibleLengths'=>{'national'=>'7,10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}|310\\d{4}','exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>'http://www.cnac.ca/canadian_dial_plan/canadian_dial_plan.htm'}};
}

1;
