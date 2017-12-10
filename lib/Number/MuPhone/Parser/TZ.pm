package Number::MuPhone::Parser::TZ;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefix'=>'0','internationalPrefix'=>'00[056]','voip'=>{'nationalNumberPattern'=>'41\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'412345678'},'mobile'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:6[2-9]|7[13-9])\\d{7}','exampleNumber'=>'621234567'},'TerritoryName'=>'Tanzania','sharedCost'=>{'exampleNumber'=>'840123456','nationalNumberPattern'=>'8(?:40|6[01])\\d{6}','possibleLengths'=>{'national'=>'9'}},'tollFree'=>{'nationalNumberPattern'=>'80[08]\\d{6}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'800123456'},'noInternationalDialling'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:8(?:[04]0|6[01])|90\\d)\\d{6}','exampleNumber'=>'800123456'},'availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[24]','pattern'=>'([24]\\d)(\\d{3})(\\d{4})','format'=>'$1 $2 $3'},{'pattern'=>'([67]\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'[67]','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','pattern'=>'([89]\\d{2})(\\d{2})(\\d{4})','leadingDigits'=>'[89]'}]},'countryCode'=>'255','generalDesc'=>{'nationalNumberPattern'=>'\\d{9}'},'premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'90\\d{7}','exampleNumber'=>'900123456'},'nationalPrefixFormattingRule'=>'$NP$FG','CountryCode'=>'TZ','fixedLine'=>{'exampleNumber'=>'222345678','possibleLengths'=>{'national'=>'7,9'},'nationalNumberPattern'=>'2[2-8]\\d{7}'},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000CB/en'}};
}

1;
