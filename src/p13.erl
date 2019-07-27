-module(p13).
-export([decode/1]).

%Реализовать декодер для стандартного алгоритма RLE

decode([]) -> [];
decode([{0,_}|T]) -> decode(T);
decode([{Acc, H}|T]) -> [H|decode([{Acc-1, H}|T])].

