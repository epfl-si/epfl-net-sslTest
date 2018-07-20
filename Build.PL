use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'EPFL::Net::SSLTest',
    license             => 'apache_2_0',
    dist_author         => q{William Belle <william.belle@gmail.com>},
    dist_version_from   => 'lib/EPFL/Net/SSLTest.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => '0',
    },
    build_requires => {
        'Test::More' => '0',
    },
    requires => {
        #'ABC'              => '1.6',
        #'Foo::Bar::Module' => '5.0401',
    },
    add_to_cleanup     => [ 'EPFL-Net-SSLTest-*' ],
);

$builder->create_build_script();
