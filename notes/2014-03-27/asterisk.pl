
use strict;
use warnings;
use feature qw( say );
use Data::Dumper;
use Test::More;
use Test::Deep;

my @list = qw( /tmp4 /db2/temp /db2/temp* /tmp* /tmp/*/log /*/log /cat/*/log /alongname/* /a/deep/name/of/directory/* /a/* );

cmp_deeply [ sort asterisk_to_bottom @list ],
    [ qw(
        /db2/temp /tmp4 /a/deep/name/of/directory/* /alongname/* /db2/temp*
        /tmp/*/log /cat/*/log /tmp* /a/* /*/log
    ) ]
    or diag Dumper [ sort asterisk_to_bottom @list ];
    ;

done_testing;
#say "Asterisk to bottom";
#say Dumper [ sort asterisk_to_bottom @list ];
#say "Asterisk to left";
#say Dumper [ sort asterisk_to_left sort asterisk_to_bottom @list ];

sub asterisk_to_bottom {
    if ( $a =~ /\*/ ) {
        if ( $b =~ /\*/ ) { # Both a and b contain asterisk
            return index( $b, '*' ) <=> index( $a, '*' );
        }
        else { # A has an asterisk, b does not
            return 1;
        }
    }
    else {
        if ( $b =~ /\*/ ) { # B has an asterisk, a does not
            return -1;
        }
    }
    # Neither a nor b has an asterisk
    return $a cmp $b;
}

#sub asterisk_to_left {
#    if ( $a =~ /\*/ && $b =~ /\*/ ) {
#        if ( index $a, '*' < index $b, '*' ) {
#            say "a $a b $b";
#            $b cmp $a;
#        }
#    }
#}
