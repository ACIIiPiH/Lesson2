-module(p12).
-export([decode_mod/1]).

%Реализовать декодер для модифицированного алгоритма RLE

decode_mod(List) -> decode_mod(List, 1).
decode_mod([],_) -> [];
decode_mod([{Acc,H}|T], 1) -> decode_mod([H|T], Acc);
decode_mod([H|T], 1) ->[H|decode_mod(T,1)];
decode_mod([H|T], Acc) -> [H|decode_mod([H|T], Acc-1)].
