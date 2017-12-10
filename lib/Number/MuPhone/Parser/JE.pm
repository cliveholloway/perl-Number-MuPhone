package Number::MuPhone::Parser::JE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'JE','fixedLine'=>{'exampleNumber'=>'1534456789','nationalNumberPattern'=>'1534[0-24-8]\\d{5}','possibleLengths'=>{'localOnly'=>'6','national'=>'10'}},'nationalPrefixFormattingRule'=>'$NP$FG','references'=>{'sourceUrl'=>['http://static.ofcom.org.uk/static/numbering/','http://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom','http://www.jcra.je/cms3/v2/public/cmsChild.asp?pageID=1024&childID=1036']},'generalDesc'=>{'nationalNumberPattern'=>'[135789]\\d{6,9}'},'countryCode'=>'44','premiumRate'=>{'nationalNumberPattern'=>'(?:871206|90(?:066[59]|1810|71(?:07|55)))\\d{4}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9018105678'},'mobile'=>{'nationalNumberPattern'=>'7(?:509\\d|7(?:00[378]|97[7-9])|829\\d|937\\d)\\d{5}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'7797712345'},'areaCodeOptional'=>{'exampleNumber'=>'1534250123','nationalNumberPattern'=>'1534[2-9]\\d{5}','possibleLengths'=>{'national'=>'10'}},'internationalPrefix'=>'00','voip'=>{'exampleNumber'=>'5612345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'56\\d{8}'},'nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[]},'sharedCost'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:4(?:4(?:4(?:05|42|69)|703)|5(?:041|800))|70002)\\d{4}','exampleNumber'=>'8447034567'},'TerritoryName'=>'Jersey','tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'80(?:07(?:35|81)|8901)\\d{4}','exampleNumber'=>'8007354567'},'preferredExtnPrefix'=>' x','personalNumber'=>{'nationalNumberPattern'=>'701511\\d{4}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'7015115678'},'pager'=>{'exampleNumber'=>'7640123456','nationalNumberPattern'=>'76(?:0[012]|2[356]|4[0134]|5[49]|6[0-369]|77|81|9[39])\\d{6}','possibleLengths'=>{'national'=>'10'}},'uan'=>{'nationalNumberPattern'=>'3(?:0(?:07(?:35|81)|8901)|3\\d{4}|4(?:4(?:4(?:05|42|69)|703)|5(?:041|800))|7(?:0002|1206))\\d{4}|55\\d{8}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5512345678'}};
}

1;
