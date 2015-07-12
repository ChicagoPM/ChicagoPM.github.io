
use Iterator::Simple qw( iterator imap );
use strict;
use warnings;
use feature qw( say state );

my $foo = iterator {
    state $x = 0;
    return if $x > 5;
    return ++$x;
};

#say $foo->();
#say $foo->();
my $iter = imap { $_ * 2 } $foo;
while ( my $i = $iter->() ) { say $i }
