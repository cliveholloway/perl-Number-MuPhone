use 5.012;
use Test::More;
use FindBin;
use Cwd qw(abs_path);
use Number::MuPhone;

my $test_data_dir = abs_path($FindBin::Bin.'/../../../../data');

{
  # load a good config 
  $ENV{MUPHONE_CONF_FILEPATH} = $test_data_dir."/good_conf.yaml";
  _load_config();
  is( $Number::MuPhone::Config::config->{default_country}, 'GB', "valid default_country" );
  is( $Number::MuPhone::Config::config->{dialer}->{pause}, ',',  "valid dialer pause" );

  # check default country instantiates correct parser class
  my $num = Number::MuPhone->new('01929 552619');
  is( $num->country, 'GB', 'check conf based default country works' );

}

{
  # this fails, so it will fall back to the default
  $ENV{MUPHONE_CONF_FILEPATH} = $test_data_dir."/bad_conf.yaml";
  _load_config();
  ok( $Number::MuPhone::Config::config->{default_country}, "US" );
}

{
  # if you have a conf file in your home dir
  # with an attribute of "is_home_conf", you can run this test
  my $home_conf = $ENV{HOME}.'/.muphone_conf.yaml';

  SKIP: {
    skip 'No conf file in home dir', 1 unless -f $home_conf;
    delete $ENV{MUPHONE_CONF_FILEPATH};
    _load_config();
    ok( $Number::MuPhone::Config::config->{is_home_conf}, "home dir conf" );
  };
}

done_testing();

sub _load_config {
  # reload the namespace so ENV var kicks in...
  delete $INC{'Number/MuPhone/Config.pm'};
  require Number::MuPhone::Config;
  Number::MuPhone::Config->import;
}

