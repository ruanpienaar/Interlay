-module(il_io_tcpv4).
-behaviour(eda_incomming_proto_cb).
-export([
    recv_data/3
]).

recv_data(Pid, _SocketOpts, Data) ->
    % io:format("recv_data Pid: ~p, Data: ~p~n", [Pid, Data]),
    % Queue Job
    queue_workers_ets_api:queue_job(example_ets_job_table, Data),
    ok.