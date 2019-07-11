die "PLACK_ENV SET SHIRO BOKE" unless $ENV{PLACK_ENV};
my $env = $ENV{PLACK_ENV};
my $config = do "./config/${env}.pl";

+{
    connect_info => [@{$config->{DBI}}],
    schema_class => "Example::DB::Schema"
};