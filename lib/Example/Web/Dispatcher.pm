package Example::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

use Example::Web::Controller::Task;

base 'Example::Web::Controller';

any '/' => sub { return shift->render_json({status => 'ok(ほんまか？)'}) };

get '/tasks' => 'Task#index';
post '/tasks' => 'Task#create';

1;
