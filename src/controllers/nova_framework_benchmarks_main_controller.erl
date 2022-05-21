-module(nova_framework_benchmarks_main_controller).
-export([
         json_serializing/1
        ]).

json_serializing(_Req) ->
    {json, #{<<"message">> => <<"Hello world!">>}}.
