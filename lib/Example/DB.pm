package Example::DB;
use strict;
use warnings;
use utf8;
use parent qw(Aniki);

__PACKAGE__->setup(
    schema => 'Example::DB::Schema',
    filter => 'Example::DB::Filter'
);

1;
