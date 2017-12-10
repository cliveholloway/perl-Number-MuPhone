package Number::MuPhone::Parser::CH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'90[016]\\d{6}','exampleNumber'=>'900123456'},'generalDesc'=>{'nationalNumberPattern'=>'[2-9]\\d{8}|860\\d{9}'},'voicemail'=>{'exampleNumber'=>'860123456789','nationalNumberPattern'=>'860\\d{9}','possibleLengths'=>{'national'=>'12'}},'countryCode'=>'41','mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>'http://www.bakom.admin.ch/themen/telekom/00479/00604/index.html?lang=en'},'CountryCode'=>'CH','fixedLine'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'(?:2[12467]|3[1-4]|4[134]|5[256]|6[12]|[7-9]1)\\d{7}','exampleNumber'=>'212345678'},'nationalPrefixFormattingRule'=>'$NP$FG','uan'=>{'exampleNumber'=>'581234567','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'5[18]\\d{7}'},'pager'=>{'exampleNumber'=>'740123456','nationalNumberPattern'=>'74[0248]\\d{6}','possibleLengths'=>{'national'=>'9'}},'personalNumber'=>{'exampleNumber'=>'878123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'878\\d{6}'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3 $4','pattern'=>'([2-9]\\d)(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'[2-7]|[89]1'},{'format'=>'$1 $2 $3','leadingDigits'=>'8[047]|90','pattern'=>'([89]\\d{2})(\\d{3})(\\d{3})'},{'format'=>'$1 $2 $3 $4 $5','pattern'=>'(\\d{3})(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leadingDigits'=>'860'}]},'TerritoryName'=>'Switzerland','sharedCost'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'84[0248]\\d{6}','exampleNumber'=>'840123456'},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}'},'mobile'=>{'exampleNumber'=>'781234567','nationalNumberPattern'=>'7[5-9]\\d{7}','possibleLengths'=>{'national'=>'9'}},'internationalPrefix'=>'00','nationalPrefix'=>'0'};
}

1;
