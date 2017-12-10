package Number::MuPhone::Parser::SJ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'80[01]\\d{5}','exampleNumber'=>'80012345'},'sharedCost'=>{'nationalNumberPattern'=>'810(?:0[0-6]|[2-8]\\d)\\d{3}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'81021234'},'TerritoryName'=>'Svalbard','availableFormats'=>{'numberFormat'=>[]},'internationalPrefix'=>'00','voip'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'85[0-5]\\d{5}','exampleNumber'=>'85012345'},'mobile'=>{'exampleNumber'=>'41234567','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:4[015-8]|5[89]|9\\d)\\d{6}'},'uan'=>{'possibleLengths'=>{'national'=>'5,8'},'nationalNumberPattern'=>'0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3}','exampleNumber'=>'01234'},'personalNumber'=>{'nationalNumberPattern'=>'880\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'88012345'},'references'=>{'sourceUrl'=>'http://www.npt.no/pt_internet/numsys/E.164.pdf'},'fixedLine'=>{'nationalNumberPattern'=>'79\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'79123456'},'CountryCode'=>'SJ','premiumRate'=>{'exampleNumber'=>'82012345','nationalNumberPattern'=>'82[09]\\d{5}','possibleLengths'=>{'national'=>'8'}},'countryCode'=>'47','voicemail'=>{'exampleNumber'=>'81212345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'81[23]\\d{5}'},'generalDesc'=>{'nationalNumberPattern'=>'0\\d{4}|[45789]\\d{7}'}};
}

1;
