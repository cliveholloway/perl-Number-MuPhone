package Number::MuPhone::Parser::RW;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'TerritoryName'=>'Rwanda','references'=>{'sourceUrl'=>['http://www.rura.gov.rw/docs/RWANDA_NATIONAL_NUMBERING_PLAN.pdf','http://en.wikipedia.org/wiki/+250']},'tollFree'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}','exampleNumber'=>'800123456'},'availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(2\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'2','nationalPrefixFormattingRule'=>'$FG'},{'nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'[7-9]','pattern'=>'([7-9]\\d{2})(\\d{3})(\\d{3})','format'=>'$1 $2 $3'},{'leadingDigits'=>'','pattern'=>'(0\\d)(\\d{2})(\\d{2})(\\d{2})','format'=>'$1 $2 $3 $4'}]},'nationalPrefix'=>'0','internationalPrefix'=>'00','CountryCode'=>'RW','fixedLine'=>{'possibleLengths'=>{'national'=>'8,9'},'nationalNumberPattern'=>'2[258]\\d{7}|06\\d{6}','exampleNumber'=>'250123456'},'mobile'=>{'exampleNumber'=>'720123456','nationalNumberPattern'=>'7[238]\\d{7}','possibleLengths'=>{'national'=>'9'}},'premiumRate'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'900\\d{6}','exampleNumber'=>'900123456'},'countryCode'=>'250','generalDesc'=>{'nationalNumberPattern'=>'[027-9]\\d{7,8}'}};
}

1;
