package Example::DB::Schema;
use strict;
use warnings;
use utf8;

use DBIx::Schema::DSL;

database 'SQLite';

create_table 'tasks' => columns {
    integer 'id', primary_key, auto_increment;
    varchar 'name';
};

1;
