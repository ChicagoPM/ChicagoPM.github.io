my $dispatch_table = {
    check_out   => \&check_out,
    update_cart => \&update_cart,
    thank_you   => \&thank_you,
    view_cart   => \&view_cart,
};
$dispatch_table->{ update_cart }->();

my %dispatch_table = (
    two_things => sub { update_cart(); check_out() },
    update_cart => \&update_cart,
    check_out   => \&check_out,
    thank_you   => \&thank_you,
    view_cart   => \&view_cart,
);
$dispatch_table{ update_cart }->();

my $dispatch_table_ref = \%dispatch_table;
$dispatch_table_ref->{ update_cart }->();
