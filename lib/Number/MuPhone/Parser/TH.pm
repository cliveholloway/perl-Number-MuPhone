package Number::MuPhone::Parser::TH;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'references'=>{'sourceUrl'=>['http://www.itu.int/oth/T02020000CD/en','http://www.barascientific.com/bscnews/variety/emergency/Tel-4Digi.pdf']},'mobileNumberPortableRegion'=>'true','nationalPrefixFormattingRule'=>'$NP$FG','fixedLine'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'(?:2\\d|3[2-9]|4[2-5]|5[2-6]|7[3-7])\\d{6}','exampleNumber'=>'21234567'},'CountryCode'=>'TH','premiumRate'=>{'nationalNumberPattern'=>'1900\\d{6}','possibleLengths'=>{'national'=>'10'},'exampleNumber'=>'1900123456'},'countryCode'=>'66','generalDesc'=>{'nationalNumberPattern'=>'[2-9]\\d{7,8}|1\\d{3}(?:\\d{5,6})?'},'tollFree'=>{'exampleNumber'=>'1800123456','possibleLengths'=>{'national'=>'10'},'nationalNumberPattern'=>'1800\\d{6}'},'noInternationalDialling'=>{'possibleLengths'=>{'national'=>'4'},'nationalNumberPattern'=>'1\\d{3}','exampleNumber'=>'1100'},'TerritoryName'=>'Thailand','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2 $3','pattern'=>'(2)(\\d{3})(\\d{4})','leadingDigits'=>'2'},{'pattern'=>'([13-9]\\d)(\\d{3})(\\d{3,4})','leadingDigits'=>'14|[3-9]','format'=>'$1 $2 $3'},{'format'=>'$1 $2 $3','nationalPrefixFormattingRule'=>'$FG','leadingDigits'=>'1','pattern'=>'(1[89]00)(\\d{3})(\\d{3})'}]},'nationalPrefix'=>'0','voip'=>{'possibleLengths'=>{'national'=>'9'},'nationalNumberPattern'=>'6[08]\\d{7}','exampleNumber'=>'601234567'},'internationalPrefix'=>'00','mobile'=>{'nationalNumberPattern'=>'(?:14|6[1-6]|[89]\\d)\\d{7}','possibleLengths'=>{'national'=>'9'},'exampleNumber'=>'812345678'},'uan'=>{'exampleNumber'=>'1100','possibleLengths'=>{'national'=>'4'},'nationalNumberPattern'=>'1\\d{3}'}};
}

1;
