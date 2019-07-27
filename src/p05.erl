-module(p05).
-export([reverse/1]).

%Перевернуть список

%Первый вариант, неэфективный, из-за применения оператора ++

%reverse([H|[]]) -> [H];
%reverse([H|T])->reverse(T)++[H].

%Оптимальный вариант исполнения

reverse([]) -> [];
reverse([H|T]) ->[H|reverse(T)].

