package Number::MuPhone::Parser::AL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'personalNumber'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'700[2-9]\\d{4}','exampleNumber'=>'70021234'},'tollFree'=>{'exampleNumber'=>'8001234','possibleLengths'=>{'national'=>'7'},'nationalNumberPattern'=>'800\\d{4}'},'TerritoryName'=>'Albania','sharedCost'=>{'nationalNumberPattern'=>'808[1-9]\\d{2}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'808123'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(4)(\\d{3})(\\d{4})','leadingDigits'=>'4[0-6]'},{'leadingDigits'=>'6','pattern'=>'(6\\d)(\\d{3})(\\d{4})','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','pattern'=>'(\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'[2358][2-5]|4[7-9]'},{'format'=>'$1 $2','pattern'=>'(\\d{3})(\\d{3,5})','leadingDigits'=>'[235][16-9]|8[016-9]|[79]'}]},'nationalPrefix'=>'0','internationalPrefix'=>'00','mobile'=>{'exampleNumber'=>'662123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'6(?:[689][2-9]|7[2-6])\\d{6}'},'premiumRate'=>{'nationalNumberPattern'=>'900[1-9]\\d{2}','possibleLengths'=>{'national'=>'6'},'exampleNumber'=>'900123'},'countryCode'=>'355','generalDesc'=>{'nationalNumberPattern'=>'[2-57]\\d{7}|6\\d{8}|8\\d{5,7}|9\\d{5}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000002/en'},'mobileNumberPortableRegion'=>'true','nationalPrefixFormattingRule'=>'$NP$FG','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'[5-7]','national'=>'8'},'nationalNumberPattern'=>'(?:2(?:1(?:0[2-9]|[1-9]\\d)|[247]\\d{2}|[35][2-9]\\d|[68](?:0[2-9]|[1-9]\\d)|9(?:[089][2-9]|[1-7]\\d))|3(?:1(?:[04-9][2-9]|[1-3]\\d)|[2-6]\\d{2}|[79](?:[09][2-9]|[1-8]\\d)|8(?:0[2-9]|[1-9]\\d))|4\\d{3}|5(?:1(?:[05-9][2-9]|[1-4]\\d)|[2-578]\\d{2}|6(?:[06-9][2-9]|[1-5]\\d)|9(?:[089][2-9]|[1-7]\\d))|8(?:[19](?:[06-9][2-9]|[1-5]\\d)|[2-6]\\d{2}|[78](?:[089][2-9]|[1-7]\\d)))\\d{4}','exampleNumber'=>'22345678'},'CountryCode'=>'AL'};
}

1;
