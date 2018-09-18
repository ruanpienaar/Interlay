-module(il_tcpipv4).
-behaviour(eda_incomming_proto_cb).
-export([
    recv_data/3
]).

recv_data(Pid, _SocketOpts, Data) ->
    % timer:sleep(1000),
    io:format("~p recv_data Pid: ~p, Data: ~p~n", [?MODULE, Pid, Data]),
    il_rabbitmq_queue:add_job(Data).


