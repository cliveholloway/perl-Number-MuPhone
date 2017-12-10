package Number::MuPhone::Parser::SM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefixForParsing'=>'(?:0549)?([89]\\d{5})','premiumRate'=>{'nationalNumberPattern'=>'7[178]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'71123456'},'generalDesc'=>{'nationalNumberPattern'=>'[05-7]\\d{7,9}'},'countryCode'=>'378','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[5-7]','pattern'=>'(\\d{2})(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'},{'format'=>'$1 $2','intlFormat'=>'($1) $2','pattern'=>'(0549)(\\d{6})','leadingDigits'=>''},{'format'=>'0549 $1','leadingDigits'=>'[89]','pattern'=>'(\\d{6})','intlFormat'=>'(0549) $1'}]},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000B5/en','http://en.wikipedia.org/wiki/%2B39','http://en.wikipedia.org/wiki/%2B378']},'TerritoryName'=>'San Marino','fixedLine'=>{'exampleNumber'=>'0549886377','nationalNumberPattern'=>'0549(?:8[0157-9]|9\\d)\\d{4}','possibleLengths'=>{'national'=>'10','localOnly'=>'6'}},'mobile'=>{'exampleNumber'=>'66661212','nationalNumberPattern'=>'6[16]\\d{6}','possibleLengths'=>{'national'=>'8'}},'CountryCode'=>'SM','nationalPrefixTransformRule'=>'0549$1','voip'=>{'exampleNumber'=>'58001110','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'5[158]\\d{6}'},'internationalPrefix'=>'00'};
}

1;
