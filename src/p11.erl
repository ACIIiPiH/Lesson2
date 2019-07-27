-module(p11).
-export([encode_mod/1]).

%Закодировать список с использованием модифицированного  алгоритма RLE

encode_mod(List) -> encode_mod(List,1).
encode_mod([], _)->[];
encode_mod([H,H|T], Acc) -> encode_mod([H|T], Acc+1);
encode_mod([H|T],1) -> [H|encode_mod(T,1)];
encode_mod([H|T], Acc) -> [{H,Acc}| encode_mod(T, 1)].
