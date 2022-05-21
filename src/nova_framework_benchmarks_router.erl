-module(nova_framework_benchmarks_router).
-behaviour(nova_router).

-export([
         routes/1
        ]).

%% The Environment-variable is defined in your sys.config in {nova, [{environment, Value}]}
routes(_Environment) ->
    [#{prefix => "",
      security => false,
      routes => [
                 {"/json", { nova_framework_benchmarks_main_controller, json_serializing}, #{methods => [get]}},
                 {"/assets/[...]", "assets"}
                ]
      }].
