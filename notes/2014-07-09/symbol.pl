use strict;
use warnings;

<<ENDYAML;
- service: RSF
  symbol: ECB37
  time: 6:30
- service: RSF
  symbol: FXIL
  time: 8:00
ENDYAML

my %symbols = (
    ECB37 => {
        service => 'RSF',
        symbol => 'ECB37',
        time => '6:30',
    },
    FXIL => {
        service => 'RSF',
        symbol => 'FXIL',
        time => '8:00',
    },
);

sub symbol {
    my ( $service, $symbol ) = @_;
    return $symbols{ $service }{ $symbol };
}

sub symbols {
    return map { values %$_ } values %symbols;
}

use Data::Dumper;
#print Dumper( $_ ) for symbols();

#print Dumper( symbol( RSF => 'ECB37' ) );

for my $service ( keys %symbols ) {
    print Dumper $symbols{ $service };
}

