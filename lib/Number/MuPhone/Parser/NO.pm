package Number::MuPhone::Parser::NO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'personalNumber'=>{'exampleNumber'=>'88012345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'880\\d{5}'},'mainCountryForCode'=>'true','uan'=>{'possibleLengths'=>{'national'=>'5,8'},'nationalNumberPattern'=>'0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3}','exampleNumber'=>'01234'},'internationalPrefix'=>'00','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'85[0-5]\\d{5}','exampleNumber'=>'85012345'},'mobile'=>{'nationalNumberPattern'=>'(?:4[015-8]|5[89]|87|9\\d)\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'40612345'},'tollFree'=>{'exampleNumber'=>'80012345','nationalNumberPattern'=>'80[01]\\d{5}','possibleLengths'=>{'national'=>'8'}},'sharedCost'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'810(?:0[0-6]|[2-8]\\d)\\d{3}','exampleNumber'=>'81021234'},'TerritoryName'=>'Norway','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[489]','pattern'=>'([489]\\d{2})(\\d{2})(\\d{3})','format'=>'$1 $2 $3'},{'leadingDigits'=>'[235-7]','pattern'=>'([235-7]\\d)(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'}]},'countryCode'=>'47','generalDesc'=>{'nationalNumberPattern'=>'0\\d{4}|[2-9]\\d{7}'},'voicemail'=>{'exampleNumber'=>'81212345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'81[23]\\d{5}'},'premiumRate'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'82[09]\\d{5}','exampleNumber'=>'82012345'},'fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:2[1-4]|3[1-3578]|5[1-35-7]|6[1-4679]|7[0-8])\\d{6}','exampleNumber'=>'21234567'},'CountryCode'=>'NO','references'=>{'sourceUrl'=>'http://www.npt.no/npt/numsys/E.164.pdf'},'mobileNumberPortableRegion'=>'true'};
}

1;
