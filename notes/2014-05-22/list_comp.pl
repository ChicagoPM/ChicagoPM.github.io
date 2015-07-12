
use strict;
use warnings;

my @foo = qw( 1 2 3 4 5 );
my @bar =   map { $_ * 2 }
            grep { $_ < 4 }
            @foo;
print join ", ", @bar;
