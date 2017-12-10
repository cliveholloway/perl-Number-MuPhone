package Number::MuPhone::Parser::SY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'963','nationalPrefixOptionalWhenFormatting'=>'true','generalDesc'=>{'nationalNumberPattern'=>'[1-59]\\d{7,8}'},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000C9/en','http://en.wikipedia.org/wiki/%2B963']},'TerritoryName'=>'Syrian Arab Republic','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','leadingDigits'=>'[1-5]','pattern'=>'(\\d{2})(\\d{3})(\\d{3,4})'},{'format'=>'$1 $2 $3','pattern'=>'(9\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'9'}]},'internationalPrefix'=>'00','nationalPrefix'=>'0','nationalPrefixFormattingRule'=>'$NP$FG','mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'9(?:22|[3-589]\\d|6[024-9])\\d{6}','exampleNumber'=>'944567890'},'fixedLine'=>{'nationalNumberPattern'=>'(?:1(?:1\\d?|4\\d|[2356])|2(?:1\\d?|[235])|3(?:[13]\\d|4)|4[13]|5[1-3])\\d{6}','possibleLengths'=>{'national'=>'8,9','localOnly'=>'6,7'},'exampleNumber'=>'112345678'},'CountryCode'=>'SY'};
}

1;
