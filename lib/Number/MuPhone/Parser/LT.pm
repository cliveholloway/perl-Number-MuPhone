package Number::MuPhone::Parser::LT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'pattern'=>'([34]\\d)(\\d{6})','leadingDigits'=>'37|4(?:1|5[45]|6[2-4])','format'=>'$1 $2'},{'leadingDigits'=>'3[148]|4(?:[24]|6[09])|528|6','pattern'=>'([3-6]\\d{2})(\\d{5})','format'=>'$1 $2'},{'format'=>'$1 $2 $3','pattern'=>'([7-9]\\d{2})(\\d{2})(\\d{3})','nationalPrefixFormattingRule'=>'$NP $FG','leadingDigits'=>'[7-9]'},{'format'=>'$1 $2 $3','leadingDigits'=>'52[0-79]','pattern'=>'(5)(2\\d{2})(\\d{4})'}]},'sharedCost'=>{'exampleNumber'=>'80812345','nationalNumberPattern'=>'808\\d{5}','possibleLengths'=>{'national'=>'8'}},'TerritoryName'=>'Lithuania','tollFree'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'800\\d{5}','exampleNumber'=>'80012345'},'mobile'=>{'nationalNumberPattern'=>'6\\d{7}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'61234567'},'internationalPrefix'=>'00','nationalPrefix'=>'8','nationalPrefixForParsing'=>'[08]','uan'=>{'exampleNumber'=>'70712345','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'70[67]\\d{5}'},'personalNumber'=>{'nationalNumberPattern'=>'700\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'70012345'},'nationalPrefixOptionalWhenFormatting'=>'true','mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200007C/en'},'CountryCode'=>'LT','fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:3[1478]|4[124-6]|52)\\d{6}','exampleNumber'=>'31234567'},'nationalPrefixFormattingRule'=>'($NP-$FG)','premiumRate'=>{'nationalNumberPattern'=>'9(?:0[0239]|10)\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'90012345'},'generalDesc'=>{'nationalNumberPattern'=>'[3-9]\\d{7}'},'countryCode'=>'370'};
}

1;
