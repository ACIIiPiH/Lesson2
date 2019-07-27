-module(p14).
-export([duplicate/1]).

%Реализовать дубликатор всех элементов списка

duplicate([]) -> [];
duplicate([H|T]) -> [H,H | duplicate(T)].
