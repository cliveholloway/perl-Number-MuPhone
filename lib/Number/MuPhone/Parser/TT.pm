package Number::MuPhone::Parser::TT;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'personalNumber'=>{'nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'5002345678'},'voicemail'=>{'nationalNumberPattern'=>'868619\\d{4}','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'exampleNumber'=>'8686191234'},'generalDesc'=>{'nationalNumberPattern'=>'[589]\\d{9}'},'countryCode'=>'1','premiumRate'=>{'exampleNumber'=>'9002345678','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'900[2-9]\\d{6}'},'fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'868(?:2(?:01|[23]\\d)|6(?:0[79]|1[02-8]|2[1-9]|[3-69]\\d|7[0-79])|82[124])\\d{4}','exampleNumber'=>'8682211234'},'mobile'=>{'exampleNumber'=>'8682911234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'868(?:2(?:6[6-9]|[789]\\d)|3(?:0[1-9]|1[02-9]|[2-9]\\d)|4[6-9]\\d|6(?:20|78|8\\d)|7(?:0[1-9]|1[02-9]|[2-9]\\d))\\d{4}'},'CountryCode'=>'TT','nationalPrefix'=>'1','internationalPrefix'=>'011','leadingDigits'=>'868','availableFormats'=>{'numberFormat'=>[]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000D4/en'},'tollFree'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}','exampleNumber'=>'8002345678'},'TerritoryName'=>'Trinidad and Tobago'};
}

1;
