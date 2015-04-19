-module(yaws_exhtml_fixes).

-export([
  % admin api
  start/0,
  stop/0
]).

%%%=============================================================================
%%% admin api
%%%=============================================================================

start() ->
  application:ensure_all_started(?MODULE).

stop() ->
  application:stop(?MODULE).
