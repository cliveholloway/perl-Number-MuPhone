package Number::MuPhone::Parser::AG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'availableFormats'=>{'numberFormat'=>[]},'TerritoryName'=>'Antigua and Barbuda','tollFree'=>{'exampleNumber'=>'8002123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'8(?:00|33|44|55|66|77|88)[2-9]\\d{6}'},'mobile'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'268(?:464|7(?:2\\d|3[246]|64|7[0-689]|8[02-68]))\\d{4}','exampleNumber'=>'2684641234'},'nationalPrefix'=>'1','internationalPrefix'=>'011','voip'=>{'exampleNumber'=>'2684801234','possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'26848[01]\\d{4}'},'pager'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'26840[69]\\d{4}','exampleNumber'=>'2684061234'},'personalNumber'=>{'exampleNumber'=>'5002345678','nationalNumberPattern'=>'5(?:00|22|33|44|66|77|88)[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'}},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T0202000008/en'},'CountryCode'=>'AG','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'10'},'nationalNumberPattern'=>'268(?:4(?:6[0-38]|84)|56[0-2])\\d{4}','exampleNumber'=>'2684601234'},'leadingDigits'=>'268','premiumRate'=>{'nationalNumberPattern'=>'900[2-9]\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'9002123456'},'generalDesc'=>{'nationalNumberPattern'=>'[2589]\\d{9}'},'countryCode'=>'1'};
}

1;
