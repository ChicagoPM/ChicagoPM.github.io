
package migrate;
use Statocles::Base;
use Statocles::Store::File;
use Statocles::Site;
use Path::Tiny qw( path );
use Getopt::Long qw( GetOptionsFromArray );
use Pod::Usage::Return qw( pod2usage );

my $mock_site = Statocles::Site->new( deploy => '.' );

sub main {
    my ( $class, @args ) = @_;

    my ( $source, $destination ) = @args;
    if ( !-d $source ) {
        return pod2usage( "ERROR: Source is not a directory" );
    }

    $destination ||= '.';
    my $store = Statocles::Store::File->new(
        path => $destination,
    );

    my @source_posts = path( $source, '_posts' )->children;

    for my $post ( @source_posts ) {
        my $source_doc = Statocles::Store::File->_parse_frontmatter( $post );

        $source_doc->{last_modified} = $source_doc->{date};
        $source_doc->{tags} = $source_doc->{categories};

        delete $source_doc->{ $_ } for qw( comments layout date categories );
        my $doc = $store->_thaw_document( $source_doc );

        # Copy the post
        my $dest_post_name = $post->basename;
        $dest_post_name =~ s{^(\d{4})-(\d{2})-(\d{2})-}{$1/$2/$3/};
        $store->write_document( $dest_post_name, $doc );
    }
}

exit migrate->main( @ARGV ) unless caller;

__END__


