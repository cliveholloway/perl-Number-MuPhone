use 5.012;
use strict;
use warnings;
use Test::More;

use Number::MuPhone::Data;

ok( $Number::MuPhone::Data::idd_codes );
ok( $Number::MuPhone::Data::nanp);

foreach my $key (keys %{$Number::MuPhone::Data::idd_codes}) {
  like($key,qr/^\d+$/,'Valid Key');
  my @country_codes = @{ $Number::MuPhone::Data::idd_codes->{$key} };
  foreach my $country_code (@country_codes) {
    like( $country_code, qr/^[A-Z]{2}$/,"Valid country code ($country_code) for key $key");
  }
}

foreach my $key (keys %{$Number::MuPhone::Data::nanp}) {
  like($key,qr/^\d{3}$/,'Valid Key');
  like( $Number::MuPhone::Data::nanp->{$key}, qr/^[A-Z]{2}$/,"Valid Value for key $key");
}

done_testing();
