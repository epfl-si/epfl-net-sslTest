#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'EPFL::Net::SSLTest' ) || print "Bail out!\n";
}

diag( "Testing EPFL::Net::SSLTest $EPFL::Net::SSLTest::VERSION, Perl $], $^X" );
