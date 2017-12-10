package Number::MuPhone::Parser::HK;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'countryCode'=>'852','personalNumber'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'8(?:1[1-4679]|2[0-367]|3[02-47])\\d{5}','exampleNumber'=>'81123456'},'generalDesc'=>{'nationalNumberPattern'=>'[235-7]\\d{7}|8\\d{7,8}|9\\d{4,10}'},'pager'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'7(?:1[0-369]|[23][0-37-9]|47|5[1578]|6[0235]|7[278]|8[236-9]|9[025-9])\\d{5}','exampleNumber'=>'71234567'},'premiumRate'=>{'nationalNumberPattern'=>'900(?:[0-24-9]\\d{7}|3\\d{1,4})','possibleLengths'=>{'national'=>'[5-8],11'},'exampleNumber'=>'90012345678'},'preferredInternationalPrefix'=>'00','internationalPrefix'=>'00(?:[126-9]|30|5[09])?','CountryCode'=>'HK','mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:5(?:[1-59][0-46-9]|6[0-4689]|7[0-2469])|6(?:0[1-9]|[1459]\\d|[2368][0-57-9]|7[0-79])|9(?:0[1-9]|1[02-9]|[2358][0-8]|[467]\\d))\\d{5}','exampleNumber'=>'51234567'},'fixedLine'=>{'exampleNumber'=>'21234567','nationalNumberPattern'=>'(?:2(?:[13-8]\\d|2[013-9]|9[0-24-9])|3(?:[1569][0-24-9]|4[0-246-9]|7[0-24-69]|89)|58[01])\\d{5}','possibleLengths'=>{'national'=>'8'}},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Hong Kong','references'=>{'sourceUrl'=>'http://www.ofca.gov.hk/en/industry_focus/telecommunications/portability/index.html'},'tollFree'=>{'exampleNumber'=>'800123456','nationalNumberPattern'=>'800\\d{6}','possibleLengths'=>{'national'=>'9'}},'availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d{4})(\\d{4})','leadingDigits'=>'[235-7]|[89](?:0[1-9]|[1-9])','format'=>'$1 $2'},{'format'=>'$1 $2 $3','leadingDigits'=>'800','pattern'=>'(800)(\\d{3})(\\d{3})'},{'format'=>'$1 $2 $3 $4','pattern'=>'(900)(\\d{2})(\\d{3})(\\d{3})','leadingDigits'=>'900'},{'pattern'=>'(900)(\\d{2,5})','leadingDigits'=>'900','format'=>'$1 $2'}]}};
}

1;
