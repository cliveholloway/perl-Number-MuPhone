package [% namespace %];
use strict;
use warnings;
use Moo;

extends 'Number::MuPhone::Parser';

sub config { 
  return [% config_hash %];
}

1;
