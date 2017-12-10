package Number::MuPhone::Parser::EG;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'generalDesc'=>{'nationalNumberPattern'=>'1\\d{4,9}|[2456]\\d{8}|3\\d{7}|[89]\\d{8,9}'},'countryCode'=>'20','premiumRate'=>{'exampleNumber'=>'9001234567','nationalNumberPattern'=>'900\\d{7}','possibleLengths'=>{'national'=>'10'}},'CountryCode'=>'EG','mobile'=>{'nationalNumberPattern'=>'1(?:0[0-269]|1[0-245]|2[0-278])\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'1001234567'},'fixedLine'=>{'exampleNumber'=>'234567890','possibleLengths'=>{'localOnly'=>'7','national'=>'5,8,9'},'nationalNumberPattern'=>'(?:1(?:3[23]\\d|5(?:[23]|9\\d))|2[2-4]\\d{2}|3\\d{2}|4(?:0[2-5]|[578][23]|64)\\d|5(?:0[2-7]|[57][23])\\d|6[24-689]3\\d|8(?:2[2-57]|4[26]|6[237]|8[2-4])\\d|9(?:2[27]|3[24]|52|6[2356]|7[2-4])\\d)\\d{5}|1[69]\\d{3}'},'nationalPrefixFormattingRule'=>'$NP$FG','internationalPrefix'=>'00','nationalPrefix'=>'0','availableFormats'=>{'numberFormat'=>[{'pattern'=>'(\\d)(\\d{7,8})','leadingDigits'=>'[23]','format'=>'$1 $2'},{'pattern'=>'(\\d{3})(\\d{3})(\\d{4})','leadingDigits'=>'1[012]|[89]00','format'=>'$1 $2 $3'},{'leadingDigits'=>'1[35]|[4-6]|[89][2-9]','pattern'=>'(\\d{2})(\\d{6,7})','format'=>'$1 $2'}]},'TerritoryName'=>'Egypt','mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>'http://www.itu.int/oth/T020200003E/en'},'tollFree'=>{'nationalNumberPattern'=>'800\\d{7}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'8001234567'}};
}

1;
