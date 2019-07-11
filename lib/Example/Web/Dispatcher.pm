package Example::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

any '/' => sub {
    my $c = shift;

    return $c->render_json({status => 'ok'});
};

get '/tasks' => sub {
    my $c = shift;

    my $tasks = $c->db->select('tasks');

    return $c->render_json($tasks->row_datas);
};

post '/tasks' => sub {
    my $c = shift;

    my $name = $c->req->parameters->{name};
    my $task = $c->db->insert_and_fetch_row(tasks => {
        name => $name
    });

    return $c->render_json($task->row_data);
};

1;
