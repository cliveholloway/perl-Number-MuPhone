package Number::MuPhone::Parser::BE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'CountryCode'=>'BE','fixedLine'=>{'nationalNumberPattern'=>'(?:1[0-69]|[23][2-8]|4[23]|5\\d|6[013-57-9]|71|8[1-79]|9[2-4])\\d{6}|80[2-8]\\d{5}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'12345678'},'mobile'=>{'nationalNumberPattern'=>'4(?:6[0135-8]|[79]\\d|8[3-9])\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'470123456'},'nationalPrefixFormattingRule'=>'$NP$FG','nationalPrefix'=>'0','internationalPrefix'=>'00','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','leadingDigits'=>'4[6-9]','pattern'=>'(\\d{3})(\\d{2})(\\d{2})(\\d{2})'},{'pattern'=>'(\\d)(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'[23]|4[23]|9[2-4]','format'=>'$1 $2 $3 $4'},{'pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leadingDigits'=>'[156]|7[018]|8(?:0[1-9]|[1-79])','format'=>'$1 $2 $3 $4'},{'pattern'=>'(\\d{3})(\\d{2})(\\d{3})','leadingDigits'=>'(?:80|9)0','format'=>'$1 $2 $3'}]},'TerritoryName'=>'Belgium','mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://www.bipt.be/en/operators/telecommunication/Numbering/Database','http://www.bipt.be/public/files/en/474/20140829153659_Belgian_numbering_plan','http://en.wikipedia.org/wiki/Telephone_numbers_in_Belgium']},'tollFree'=>{'exampleNumber'=>'80012345','nationalNumberPattern'=>'800\\d{5}','possibleLengths'=>{'national'=>'8'}},'generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{7,8}'},'countryCode'=>'32','premiumRate'=>{'exampleNumber'=>'90123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:70[2-467]|90[0-79])\\d{5}'},'uan'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'78\\d{6}','exampleNumber'=>'78123456'}};
}

1;
