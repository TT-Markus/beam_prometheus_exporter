-module(beam_prometheus_app).

-behaviour(application).

%% Application callbacks
-export([start/2,
         stop/1]).

%% API

start(_StartType, _StartArgs) ->
		  Dispatch = cowboy_router:compile([
		  	   {'_', [
					{"/metrics/[:registry]", beam_metrics_handler, []}
					      ]}
					      ]),
					      {ok, _} = cowboy:start_http(http, 100, [{port, 9101}], [
					      	   {compress, true},
						   	      {env, [{dispatch, Dispatch}]}
							      ]),
  beam_prometheus_sup:start_link().

stop(_State) ->
  ok.
