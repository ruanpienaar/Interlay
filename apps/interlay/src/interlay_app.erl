-module(interlay_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("interlay.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    interlay_sup:start_link().

stop(_State) ->
    ok.
