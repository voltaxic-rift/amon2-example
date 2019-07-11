requires 'Amon2', '6.13';
requires 'Anego', '0.02';
requires 'Aniki', '1.06';
requires 'Crypt::CBC';
requires 'Crypt::Rijndael';
requires 'DBD::SQLite', '1.33';
requires 'JSON', '2.50';
requires 'Module::Functions', '2';
requires 'Plack::Middleware::ReverseProxy', '0.09';
requires 'Router::Boom', '0.06';
requires 'Starlet', '0.20';
requires 'Term::ReadLine::Gnu';
requires 'Test::WWW::Mechanize::PSGI';
requires 'Time::Piece', '1.20';
requires 'perl', '5.010_001';

on develop => sub {
    requires 'Data::Printer';
    requires 'Pry';
};

on configure => sub {
    requires 'Module::Build', '0.38';
    requires 'Module::CPANfile', '0.9010';
};

on test => sub {
    requires 'Test::More', '0.98';
};
