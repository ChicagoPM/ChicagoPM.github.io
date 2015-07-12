
use strict;
use warnings;
use feature qw( say );

use My::Includes;
use List::Util qw( reduce );

say for @INC;

use Test::Import;

# %INC
say $INC{'Test/Import.pm'};

