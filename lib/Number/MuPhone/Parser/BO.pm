package Number::MuPhone::Parser::BO;
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return {'nationalPrefix'=>'0','internationalPrefix'=>'00(1\\d)?','CountryCode'=>'BO','fixedLine'=>{'nationalNumberPattern'=>'(?:2(?:2\\d{2}|5(?:11|[258]\\d|9[67])|6(?:12|2\\d|9[34])|8(?:2[34]|39|62))|3(?:3\\d{2}|4(?:6\\d|8[24])|8(?:25|42|5[257]|86|9[25])|9(?:2\\d|3[234]|4[248]|5[24]|6[2-6]|7\\d))|4(?:4\\d{2}|6(?:11|[24689]\\d|72)))\\d{4}','possibleLengths'=>{'national'=>'8','localOnly'=>'7'},'exampleNumber'=>'22123456'},'mobile'=>{'possibleLengths'=>{'national'=>'8'},'nationalNumberPattern'=>'[67]\\d{7}','exampleNumber'=>'71234567'},'TerritoryName'=>'Bolivia','references'=>{'sourceUrl'=>['http://www.itu.int/oth/T020200001A/en','http://www.bolivia.com/Servicios/Plandenumeracion.pdf']},'carrierCodeFormattingRule'=>'$NP$CC $FG','availableFormats'=>{'numberFormat'=>[{'format'=>'$1 $2','pattern'=>'([234])(\\d{7})','leadingDigits'=>'[234]'},{'pattern'=>'([67]\\d{7})','leadingDigits'=>'[67]','format'=>'$1'}]},'countryCode'=>'591','generalDesc'=>{'nationalNumberPattern'=>'[23467]\\d{7}'},'nationalPrefixForParsing'=>'0(1\\d)?'};
}

1;
