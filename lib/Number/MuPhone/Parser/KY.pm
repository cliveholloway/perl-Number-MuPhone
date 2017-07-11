package Number::MuPhone::Parser::KY;
use Moo;

extends 'Number::MuPhone::Parser';

has '+country'              => ( default => 'KY'             );
has '+country_code'         => ( default => '1'             );
has '+country_name'         => ( default => 'Cayman Islands' );
has '+_national_dial_prefix'      => ( default => '1' );
has '+_international_dial_prefix' => ( default => '011' );

1;
