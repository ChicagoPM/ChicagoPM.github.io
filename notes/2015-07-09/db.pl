
use strict;
use warnings;
use feature qw( :5.20 );
use Data::UUID;
use YAML;

my $user_id = Data::UUID->new->create_str;

use DBI;
unlink 'test.db';
my $dbh = DBI->connect( 'dbi:SQLite:test.db' );

$dbh->do( 'CREATE TABLE user_profile (
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    email VARCHAR
)' );

$dbh->do( 'CREATE TABLE donation (
    id INTEGER PRIMARY KEY,
    donor_id INTEGER ,
    amount DOUBLE,
    date DATE,
    FOREIGN KEY (donor_id) REFERENCES user_profile(id)
)' );

# SELECT * FROM donation WHERE donor_id=1

$dbh->do( 'INSERT INTO user_profile ( name, email )
            VALUES ( "Doug Bell", "doug@example.com" )' );

$dbh->do( 'INSERT INTO donation ( donor_id, amount, date )
            VALUES ( 1, 1000, "2015-07-09" )' );
$dbh->do( 'INSERT INTO donation ( donor_id, amount, date )
            VALUES ( 1, 2000, "2014-09-13" )' );


my %transaction_database;

my $user_sth = $dbh->prepare( 'SELECT * FROM user_profile' );
$user_sth->execute;
while ( my $row = $user_sth->fetchrow_hashref ) {
    my $id = $row->{id};

    push
        @{
            $transaction_database{ $id }{ user_profile }
        },
        $row;
}

my $donor_sth = $dbh->prepare( 'SELECT * FROM donation' );
$donor_sth->execute;
while ( my $row = $donor_sth->fetchrow_hashref ) {
    my $id = $row->{donor_id};
    push
        @{
            $transaction_database{ $id }{ donation }
        },
        $row;
}

say YAML::Dump( \%transaction_database );
