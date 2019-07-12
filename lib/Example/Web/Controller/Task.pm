package Example::Web::Controller::Task;
use strict;
use warnings;
use utf8;

sub index {
    my ($self, $c) = @_;

    my $tasks = $c->db->select('tasks');

    return $c->render_json($tasks->row_datas);
}

sub create {
    my ($self, $c) = @_;

    my $name = $c->req->parameters->{name};
    my $task = $c->db->insert_and_fetch_row(tasks => {
        name => $name
    });

    return $c->render_json($task->row_data);
}

1;