
use strict;
use warnings;
use feature qw( :5.20 );

my $foo = sub { say for @_ };

sub bar {
    say "Explicitly pass args";
    &$foo( @_ );
    say "Implicitly pass current \@_";
    &$foo;
}

bar("foo");
bar();
