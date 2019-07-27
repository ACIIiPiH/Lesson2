-module(p02).
-export([but_last/1]).

%Найти два последних элемента списка

but_last([]) -> [];
but_last([H|[]]) -> H;
but_last([H,T|[]]) -> [H,T];
but_last([_|T]) ->but_last(T).
