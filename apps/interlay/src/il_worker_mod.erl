-module(il_worker_mod).
-export([run_job/1]).

% Worker mod
% Make into behaviour

run_job(_Value) ->
    timer:sleep(1000),
    io:format(".", []),
    ok.