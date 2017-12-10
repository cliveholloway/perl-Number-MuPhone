package Number::MuPhone::Parser::QA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'pager'=>{'nationalNumberPattern'=>'2(?:[12]\\d|61)\\d{4}','possibleLengths'=>{'national'=>'7'},'exampleNumber'=>'2123456'},'generalDesc'=>{'nationalNumberPattern'=>'[2-8]\\d{6,7}'},'countryCode'=>'974','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'([28]\\d{2})(\\d{4})','leadingDigits'=>'[28]'},{'format'=>'$1 $2','leadingDigits'=>'[3-7]','pattern'=>'([3-7]\\d{3})(\\d{4})'}]},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000AB/en','http://wtng.info/wtng-qq.html']},'tollFree'=>{'exampleNumber'=>'8001234','nationalNumberPattern'=>'800\\d{4}','possibleLengths'=>{'national'=>'7'}},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Qatar','fixedLine'=>{'nationalNumberPattern'=>'4[04]\\d{6}','possibleLengths'=>{'national'=>'8'},'exampleNumber'=>'44123456'},'mobile'=>{'exampleNumber'=>'33123456','possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[3567]\\d{7}'},'CountryCode'=>'QA','internationalPrefix'=>'00'};
}

1;
