-module(p10).
-export([encode/1]).

%Закодировать список с использованием алгоритма RLE

encode(List) -> encode(List, 1).

encode([],_) ->[];
encode([H,H|T], Acc) -> encode([H|T], Acc+1);
encode([H|T], Acc) -> [{H,Acc}|encode(T,1)].

