-module(p03).
-export([element_at/2]).

%Найти N-ый элемент списка

element_at([],_) -> undefined;
element_at([H|T],0) -> undefined;
element_at([H|_],1) -> H;
element_at([_|T], N) -> element_at(T, N-1).
