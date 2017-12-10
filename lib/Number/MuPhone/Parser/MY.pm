package Number::MuPhone::Parser::MY;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'premiumRate'=>{'possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'1600\\d{6}','exampleNumber'=>'1600123456'},'generalDesc'=>{'nationalNumberPattern'=>'[13-9]\\d{7,9}'},'countryCode'=>'60','availableFormats'=>{'numberFormat'=>[{'format'=>'$1-$2 $3','pattern'=>'([4-79])(\\d{3})(\\d{4})','leadingDigits'=>'[4-79]','nationalPrefixFormattingRule'=>'$NP$FG'},{'format'=>'$1-$2 $3','leadingDigits'=>'3','nationalPrefixFormattingRule'=>'$NP$FG','pattern'=>'(3)(\\d{4})(\\d{4})'},{'pattern'=>'([18]\\d)(\\d{3})(\\d{3,4})','leadingDigits'=>'1[02-46-9][1-9]|8','nationalPrefixFormattingRule'=>'$NP$FG','format'=>'$1-$2 $3'},{'leadingDigits'=>'1[36-8]0','pattern'=>'(1)([36-8]00)(\\d{2})(\\d{4})','format'=>'$1-$2-$3-$4'},{'pattern'=>'(11)(\\d{4})(\\d{4})','leadingDigits'=>'11','nationalPrefixFormattingRule'=>'$NP$FG','format'=>'$1-$2 $3'},{'nationalPrefixFormattingRule'=>'$NP$FG','leadingDigits'=>'15','pattern'=>'(15[49])(\\d{3})(\\d{4})','format'=>'$1-$2 $3'}]},'mobileNumberPortableRegion'=>'true','TerritoryName'=>'Malaysia','tollFree'=>{'nationalNumberPattern'=>'1[378]00\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'1300123456'},'references'=>{'sourceUrl'=>['http://en.wikipedia.org/wiki/%2B60','http://www.skmm.gov.my']},'CountryCode'=>'MY','fixedLine'=>{'exampleNumber'=>'323456789','nationalNumberPattern'=>'(?:3[2-9]\\d|[4-9][2-9])\\d{6}','possibleLengths'=>{'national'=>'8,9','localOnly'=>'6,7'}},'mobile'=>{'nationalNumberPattern'=>'1(?:1[1-5]\\d{2}|[02-4679][2-9]\\d|59\\d{2}|8(?:1[23]|[2-9]\\d))\\d{5}','possibleLengths'=>{'national'=>'9,10'},'exampleNumber'=>'123456789'},'nationalPrefix'=>'0','voip'=>{'exampleNumber'=>'1541234567','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'154\\d{7}'},'internationalPrefix'=>'00'};
}

1;
