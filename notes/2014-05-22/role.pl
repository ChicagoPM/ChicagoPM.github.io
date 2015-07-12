
use strict;
use warnings;

{
    package MyRole;
    use Moose::Role;
    sub foo {
        # Go to the database
    }
}

{
    package MockRoleUser;
    use Moose;
    with qw( MyRole );

    sub foo {
        # Don't go to the database!
    }
}

# Do my tests!

