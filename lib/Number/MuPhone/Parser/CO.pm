package Number::MuPhone::Parser::CO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200002C/en','http://en.wikipedia.org/wiki/Telephone_numbers_in_Colombia']},'tollFree'=>{'exampleNumber'=>'18001234567','possibleLengths'=>{'national'=>'11'},'nationalNumberPattern'=>'1800\\d{7}'},'TerritoryName'=>'Colombia','mobileNumberPortableRegion'=>'true','availableFormats'=>{'numberFormat'=>[{'carrierCodeFormattingRule'=>'$NP$CC $FG','nationalPrefixFormattingRule'=>'($FG)','leadingDigits'=>'1(?:8[2-9]|9(?:09|[1-3])|[2-7])|[24-8]','pattern'=>'(\\d)(\\d{7})','format'=>'$1 $2'},{'carrierCodeFormattingRule'=>'$NP$CC $FG','leadingDigits'=>'3','pattern'=>'(\\d{3})(\\d{7})','format'=>'$1 $2'},{'format'=>'$1-$2-$3','leadingDigits'=>'1(?:800|9(?:0[01]|4[78]))','nationalPrefixFormattingRule'=>'$NP$FG','intlFormat'=>'$1 $2 $3','pattern'=>'(1)(\\d{3})(\\d{7})'}]},'internationalPrefix'=>'00(?:4(?:[14]4|56)|[579])','nationalPrefix'=>'0','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7','national'=>'8'},'nationalNumberPattern'=>'[124-8][2-9]\\d{6}','exampleNumber'=>'12345678'},'mobile'=>{'nationalNumberPattern'=>'3(?:0[0-5]|1\\d|2[0-3]|5[01])\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'3211234567'},'CountryCode'=>'CO','premiumRate'=>{'nationalNumberPattern'=>'19(?:0[01]|4[78])\\d{7}','possibleLengths'=>{'national'=>'11'},'exampleNumber'=>'19001234567'},'nationalPrefixForParsing'=>'0([3579]|4(?:44|56))?','countryCode'=>'57','generalDesc'=>{'nationalNumberPattern'=>'(?:[13]\\d{0,3}|[24-8])\\d{7}'}};
}

1;
