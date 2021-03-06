%% @author Noel Bush <noel@platformer.org>
%% @copyright 2010 Noel Bush.

%% @doc Callbacks for the platformer application.

-module(platformer_app).
-author('Noel Bush <noel@platformer.org>').

-behaviour(application).
-export([start/2, stop/1]).

%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for platformer.
start(_Type, _StartArgs) ->
    platformer_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for platformer.
stop(_State) ->
    log4erl:info("Platformer node is shutting down."),
    ok.

