:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

:- http_handler(root(hello_world), say_hi, []).		% (1)




server(Port) :-						% (2)
        http_server(http_dispatch, [port(Port)]).


stop_server(Port) :- 
        http_stop_server(Port).


say_hi(_Request) :-					% (3)
        format('Content-type: text/plain~n~n'),
        format('Hello There!~n').