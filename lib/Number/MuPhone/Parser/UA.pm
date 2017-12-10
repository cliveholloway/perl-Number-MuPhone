package Number::MuPhone::Parser::UA;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'[3-9]\\d{8}'},'countryCode'=>'380','preferredInternationalPrefix'=>'0~0','premiumRate'=>{'exampleNumber'=>'900212345','nationalNumberPattern'=>'900[2-49]\\d{5}','possibleLengths'=>{'national'=>'9'}},'CountryCode'=>'UA','mobile'=>{'exampleNumber'=>'391234567','nationalNumberPattern'=>'(?:39|50|6[36-8]|7[1-3]|9[1-9])\\d{7}','possibleLengths'=>{'national'=>'9'}},'fixedLine'=>{'exampleNumber'=>'311234567','possibleLengths'=>{'localOnly'=>'[5-7]','national'=>'9'},'nationalNumberPattern'=>'(?:3[1-8]|4[13-8]|5[1-7]|6[12459])\\d{7}'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','voip'=>{'nationalNumberPattern'=>'89\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'891234567'},'nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'([3-9]\\d)(\\d{3})(\\d{4})','leadingDigits'=>'[38]9|4(?:[45][0-5]|87)|5(?:0|6(?:3[14-7]|7)|7[37])|6[36-8]|7|9[1-9]'},{'pattern'=>'([3-689]\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'3(?:[1-46-8]2[013-9]|52)|4(?:[1378]2|62[013-9])|5(?:[12457]2|6[24])|6(?:[49]2|[12][29]|5[24])|8[0-8]|90','format'=>'$1 $2 $3'},{'format'=>'$1 $2','pattern'=>'([3-6]\\d{3})(\\d{5})','leadingDigits'=>'3(?:5[013-9]|[1-46-8](?:22|[013-9]))|4(?:[137][013-9]|6(?:[013-9]|22)|[45][6-9]|8[4-6])|5(?:[1245][013-9]|6(?:3[02389]|[015689])|3|7[4-6])|6(?:[49][013-9]|5[0135-9]|[12][13-8])'}]},'TerritoryName'=>'Ukraine','tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'800\\d{6}','possibleLengths'=>{'national'=>'9'}},'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000DB/en','http://en.wikipedia.org/wiki/%2B380']}};
}

1;
