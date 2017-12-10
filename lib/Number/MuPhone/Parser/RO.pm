package Number::MuPhone::Parser::RO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'preferredExtnPrefix'=>' int ','uan'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'37\\d{7}','exampleNumber'=>'372123456'},'mobile'=>{'exampleNumber'=>'712345678','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'7(?:[0-8]\\d{2}|99\\d)\\d{5}'},'internationalPrefix'=>'00','nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'leadingDigits'=>'[23]1','pattern'=>'(\\d{2})(\\d{3})(\\d{4})','format'=>'$1 $2 $3'},{'leadingDigits'=>'[23]1','pattern'=>'(\\d{2})(\\d{4})','format'=>'$1 $2'},{'pattern'=>'(\\d{3})(\\d{3})(\\d{3})','leadingDigits'=>'[23][3-7]|[7-9]','format'=>'$1 $2 $3'},{'leadingDigits'=>'2[3-6]','pattern'=>'(2\\d{2})(\\d{3})','format'=>'$1 $2'}]},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'800\\d{6}'},'TerritoryName'=>'Romania','sharedCost'=>{'exampleNumber'=>'801123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'801\\d{6}'},'generalDesc'=>{'nationalNumberPattern'=>'[23]\\d{5,8}|[7-9]\\d{8}'},'countryCode'=>'40','premiumRate'=>{'exampleNumber'=>'900123456','possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'90[036]\\d{6}'},'fixedLine'=>{'exampleNumber'=>'211234567','possibleLengths'=>{'national'=>'6,9'},'nationalNumberPattern'=>'2(?:1(?:\\d{7}|9\\d{3})|[3-6](?:\\d{7}|\\d9\\d{2}))|3(?:1\\d{4}(?:\\d{3})?|[3-6]\\d{7})'},'CountryCode'=>'RO','nationalPrefixFormattingRule'=>'$NP$FG','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000AC/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Romania','http://www.ancom.org.ro/en/presentation-of-romanian-national-numbering-plan-according-to-itu-t-recommendation-e129-_5523']},'mobileNumberPortableRegion'=>'true'};
}

1;
