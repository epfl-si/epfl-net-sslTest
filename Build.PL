# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# See the LICENSE file for more details.

use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
  module_name        => 'EPFL::Net::SSLTest',
  license            => 'apache_2_0',
  dist_author        => q{William Belle <william.belle@gmail.com>},
  dist_version_from  => 'lib/EPFL/Net/SSLTest.pm',
  release_status     => 'stable',
  configure_requires => {
    'Module::Build' => '0',
  },
  build_requires => {
    'Test::More' => '0',
  },
  requires => {
    'LWP::Protocol::https' => '6.06',
    'LWP::UserAgent'       => '6.34',
    'Term::ANSIColor'      => '4.06',
    'WebService::SSLLabs'  => '0.30',
  },
  add_to_cleanup => ['EPFL-Net-SSLTest-*'],
);

$builder->create_build_script();
