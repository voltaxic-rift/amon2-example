package builder::MyBuilder;
use strict;
use warnings;
use utf8;
use 5.008_001;
use parent qw(Module::Build);

# Module:::Build's share_dir handling is not good for me.
# We need to install 'tmpl' directories to '$DIST_DIR/tmpl'. But M::B doesn't support it.
sub ACTION_code {
    my $self = shift;
    my $share_prefix = File::Spec->catdir($self->blib, qw/lib auto share dist/, 'Example');
    $self->SUPER::ACTION_code();
}

1;
