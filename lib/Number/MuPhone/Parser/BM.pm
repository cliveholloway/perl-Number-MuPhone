package Number::MuPhone::Parser::BM;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[4589]\\d{9}'},'personalNumber'=>{'exampleNumber'=>'5002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}'},'countryCode'=>'1','premiumRate'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}','exampleNumber'=>'9002123456'},'fixedLine'=>{'exampleNumber'=>'4412345678','nationalNumberPattern'=>'441(?:2(?:02|23|61|[3479]\\d)|[46]\\d{2}|5(?:4\\d|60|89)|824)\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'}},'mobile'=>{'exampleNumber'=>'4413701234','possibleLengths'=>{'national'=>'10','localOnly'=>'7'},'nationalNumberPattern'=>'441(?:[37]\\d|5[0-39])\\d{5}'},'CountryCode'=>'BM','internationalPrefix'=>'011','nationalPrefix'=>'1','leadingDigits'=>'441','availableFormats'=>{'numberFormat'=>[]},'tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','exampleNumber'=>'8002123456'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000018/en'},'TerritoryName'=>'Bermuda'};
}

1;
