-module(p05).
-export([reverse/1]).

%Перевернуть список

%Первый вариант, неэфективный, из-за применения оператора ++

%reverse([H|[]]) -> [H];
%reverse([H|T])->reverse(T)++[H].

%Оптимальный вариант исполнения

reverse(List) -> reverse(List, []).
reverse ([], Rev_list) -> Rev_list;
reverse([H|T], Rev_list) ->reverse(T, [H|Rev_list]).

