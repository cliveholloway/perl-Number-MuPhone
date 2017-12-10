package Number::MuPhone::Parser::AE;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'8'},'nationalNumberPattern'=>'[2-4679][2-8]\\d{6}','exampleNumber'=>'22345678'},'mobile'=>{'nationalNumberPattern'=>'5[024-68]\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'501234567'},'CountryCode'=>'AE','internationalPrefix'=>'00','nationalPrefix'=>'0','nationalPrefixFormattingRule'=>'$NP$FG','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'([2-4679])(\\d{3})(\\d{4})','leadingDigits'=>'[2-4679][2-8]'},{'format'=>'$1 $2 $3','pattern'=>'(5\\d)(\\d{3})(\\d{4})','leadingDigits'=>'5'},{'format'=>'$1 $2 $3','leadingDigits'=>'[479]0','nationalPrefixFormattingRule'=>'$FG','pattern'=>'([479]00)(\\d)(\\d{5})'},{'leadingDigits'=>'60|8','nationalPrefixFormattingRule'=>'$FG','pattern'=>'([68]00)(\\d{2,9})','format'=>'$1 $2'}]},'references'=>{'sourceUrl'=>'http://www.itu.int/oth/T02020000DC/en'},'tollFree'=>{'exampleNumber'=>'800123456','possibleLengths'=>{'national'=>'[5-12]'},'nationalNumberPattern'=>'400\\d{6}|800\\d{2,9}'},'TerritoryName'=>'United Arab Emirates','sharedCost'=>{'nationalNumberPattern'=>'700[05]\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'700012345'},'generalDesc'=>{'nationalNumberPattern'=>'[2-79]\\d{7,8}|800\\d{2,9}'},'countryCode'=>'971','premiumRate'=>{'exampleNumber'=>'900234567','nationalNumberPattern'=>'900[02]\\d{5}','possibleLengths'=>{'national'=>'9'}},'uan'=>{'nationalNumberPattern'=>'600[25]\\d{5}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'600212345'}};
}

1;
