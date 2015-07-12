
use strict;
use warnings;
use feature qw( :5.20 );
use Data::UUID;
use YAML;

my $USER_ID = 1;

my %transaction_database = (

    1 => {
        user_profile => [
            {
                name => 'Tor Coolguy',
                email => 'tor@example.com',
            },
        ],

        donation => [
            {
                date => '2015-07-09',
                amount => 1000.00,
            },
            {
                date => '2014-09-13',
                amount => 2000.00,
            },
        ],
    },

    2 => {
        user_profile => [
            {
                name => 'Doug Bell',
                email => 'doug@example.com',
            },
        ],

        donation => [
            {
                date => '2014-01-02',
                amount => 10_000.00,
            },
        ],
    },

);

say YAML::Dump( $transaction_database{ $USER_ID } );

