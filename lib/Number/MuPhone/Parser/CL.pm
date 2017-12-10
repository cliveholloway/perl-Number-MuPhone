package Number::MuPhone::Parser::CL;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'mobileNumberPortableRegion'=>'true','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200002A/en','http://en.wikipedia.org/wiki/%2B56','http://www.subtel.gob.cl/base_numeracion/tabla_numeracion_ido_idd.xlsx']},'nationalPrefixFormattingRule'=>'$NP$FG','CountryCode'=>'CL','fixedLine'=>{'possibleLengths'=>{'localOnly'=>'7,8','national'=>'9'},'nationalNumberPattern'=>'2(?:1962\\d{4}|2\\d{7}|32[0-2467]\\d{5})|(?:3[2-5]|[47][1-35]|5[1-3578]|6[13-57]|9[3-9])\\d{7}','exampleNumber'=>'221234567'},'countryCode'=>'56','generalDesc'=>{'nationalNumberPattern'=>'(?:[2-9]|600|123)\\d{7,8}'},'sharedCost'=>{'nationalNumberPattern'=>'600\\d{7,8}','possibleLengths'=>{'national'=>'10,11'},'exampleNumber'=>'6001234567'},'TerritoryName'=>'Chile','noInternationalDialling'=>{'exampleNumber'=>'6001234567','possibleLengths'=>{'national'=>'10,11'},'nationalNumberPattern'=>'600\\d{7,8}'},'tollFree'=>{'possibleLengths'=>{'national'=>'9,11'},'nationalNumberPattern'=>'800\\d{6}|1230\\d{7}','exampleNumber'=>'800123456'},'availableFormats'=>{'numberFormat'=>[{'carrierCodeFormattingRule'=>'$CC ($FG)','pattern'=>'(\\d)(\\d{4})(\\d{4})','leadingDigits'=>'2[23]','nationalPrefixFormattingRule'=>'($FG)','format'=>'$1 $2 $3'},{'carrierCodeFormattingRule'=>'$CC ($FG)','pattern'=>'(\\d{2})(\\d{3})(\\d{4})','leadingDigits'=>'[357]|4[1-35]|6[13-57]','nationalPrefixFormattingRule'=>'($FG)','format'=>'$1 $2 $3'},{'pattern'=>'(9)(\\d{4})(\\d{4})','leadingDigits'=>'9','format'=>'$1 $2 $3'},{'pattern'=>'(44)(\\d{3})(\\d{4})','leadingDigits'=>'44','format'=>'$1 $2 $3'},{'pattern'=>'([68]00)(\\d{3})(\\d{3,4})','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'60|8','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3 $4','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'60','pattern'=>'(600)(\\d{3})(\\d{2})(\\d{3})'},{'pattern'=>'(1230)(\\d{3})(\\d{4})','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'1','format'=>'$1 $2 $3'},{'carrierCodeFormattingRule'=>'$CC ($FG)','pattern'=>'(\\d{5})(\\d{4})','leadingDigits'=>'219','nationalPrefixFormattingRule'=>'($FG)','format'=>'$1 $2'},{'format'=>'$1','pattern'=>'(\\d{4,5})','intlFormat'=>'NA','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'[1-9]'}]},'nationalPrefix'=>'0','internationalPrefix'=>'(?:0|1(?:1[0-69]|2[0-57]|5[13-58]|69|7[0167]|8[018]))0','voip'=>{'nationalNumberPattern'=>'44\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'441234567'},'mobile'=>{'exampleNumber'=>'961234567','nationalNumberPattern'=>'2(?:1962\\d{4}|2\\d{7}|32[0-2467]\\d{5})|(?:3[2-5]|[47][1-35]|5[1-3578]|6[13-57]|9[3-9])\\d{7}','possibleLengths'=>{'national'=>'9','localOnly'=>'8'}},'nationalPrefixForParsing'=>'0|(1(?:1[0-69]|2[0-57]|5[13-58]|69|7[0167]|8[018]))'};
}

1;
