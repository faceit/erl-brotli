-module('brotli').

-export([encode/1, encode/2, encode/3]).

-define(DEFAULT_QUALITY, 6).
-define(DEFAULT_WINDOW, 22).

encode(Data) ->
    brotli_nif:brotli_encode(Data, ?DEFAULT_QUALITY, ?DEFAULT_WINDOW).

encode(Data, Quality) ->
    brotli_nif:brotli_encode(Data, Quality, ?DEFAULT_WINDOW).

encode(Data, Quality, Window) ->
    brotli_nif:brotli_encode(Data, Quality, Window).
