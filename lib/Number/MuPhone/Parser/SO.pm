package Number::MuPhone::Parser::SO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[{'format'=>'$1','pattern'=>'(\\d{6})','leadingDigits'=>'[134]'},{'leadingDigits'=>'2[0-79]|[13-5]','pattern'=>'(\\d)(\\d{6})','format'=>'$1 $2'},{'format'=>'$1 $2','leadingDigits'=>'24|[67]','pattern'=>'(\\d)(\\d{7})'},{'leadingDigits'=>'8[125]','pattern'=>'(\\d{2})(\\d{4})','format'=>'$1 $2'},{'pattern'=>'(\\d{2})(\\d{5,7})','leadingDigits'=>'15|28|6[1-35-9]|799|9[2-9]','format'=>'$1 $2'},{'format'=>'$1 $2 $3','leadingDigits'=>'3[59]|4[89]|6[24-6]|79|8[08]|90','pattern'=>'(\\d{3})(\\d{3})(\\d{3})'}]},'TerritoryName'=>'Somalia','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000C0/en','http://en.wikipedia.org/wiki/+252']},'CountryCode'=>'SO','mobile'=>{'exampleNumber'=>'71123456','nationalNumberPattern'=>'(?:15\\d|2(?:4\\d|8)|3[59]\\d{2}|4[89]\\d{2}|6[1-9]?\\d{2}|7(?:[1-8]\\d|9\\d{1,2})|8[08]\\d{2}|9(?:0[67]|[2-9])\\d)\\d{5}','possibleLengths'=>{'national'=>'[7-9]'}},'fixedLine'=>{'exampleNumber'=>'4012345','possibleLengths'=>{'national'=>'6,7'},'nationalNumberPattern'=>'(?:1\\d{1,2}|2[0-79]\\d|3[0-46-8]?\\d|4[0-7]?\\d|59\\d|8[125])\\d{4}'},'nationalPrefix'=>'0','internationalPrefix'=>'00','generalDesc'=>{'nationalNumberPattern'=>'[1-9]\\d{5,8}'},'countryCode'=>'252'};
}

1;
