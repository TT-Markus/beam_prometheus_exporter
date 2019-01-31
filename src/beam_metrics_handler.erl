-module(beam_metrics_handler).

-export([init/3, handle/2, terminate/3]).

init(Transport, Req, Opts) ->
	  prometheus_cowboy1_handler:init(Transport, Req, Opts).

handle(Req, State) ->
	    prometheus_cowboy1_handler:handle(Req, State).

terminate(_,_,_) -> ok.