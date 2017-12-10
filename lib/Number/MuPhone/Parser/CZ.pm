package Number::MuPhone::Parser::CZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T0202000035/en','http://en.wikipedia.org/wiki/%2B420']},'CountryCode'=>'CZ','fixedLine'=>{'exampleNumber'=>'212345678','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'2\\d{8}|(?:3[1257-9]|4[16-9]|5[13-9])\\d{7}'},'premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'9(?:0[05689]|76)\\d{6}','exampleNumber'=>'900123456'},'generalDesc'=>{'nationalNumberPattern'=>'[2-8]\\d{8}|9\\d{8,11}'},'voicemail'=>{'exampleNumber'=>'93123456789','nationalNumberPattern'=>'9(?:3\\d{9}|6\\d{7,10})','possibleLengths'=>{'national'=>'[9-12]'}},'countryCode'=>'420','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[2-8]|9[015-7]','pattern'=>'([2-9]\\d{2})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3 $4','pattern'=>'(96\\d)(\\d{3})(\\d{3})(\\d{3})','leadingDigits'=>'96'},{'leadingDigits'=>'9[36]','pattern'=>'(9\\d)(\\d{3})(\\d{3})(\\d{3})','format'=>'$1 $2 $3 $4'}]},'sharedCost'=>{'exampleNumber'=>'811234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'8[134]\\d{7}'},'TerritoryName'=>'Czech Rep.','tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}'},'mobile'=>{'exampleNumber'=>'601123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:60[1-8]|7(?:0[2-5]|[2379]\\d))\\d{6}'},'internationalPrefix'=>'00','voip'=>{'nationalNumberPattern'=>'9[17]0\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'910123456'},'uan'=>{'exampleNumber'=>'972123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'9(?:5\\d|7[234])\\d{6}'},'personalNumber'=>{'exampleNumber'=>'700123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'70[01]\\d{6}'}};
}

1;
