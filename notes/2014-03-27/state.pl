
use strict; use warnings;
use feature qw( state say );

sub foo {
    state $i = 5;
    $i++;
    say $i;
}

foo(); foo; foo;
