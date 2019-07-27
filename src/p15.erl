-module(p15).
-export([replicate/2]).

%Реализовать функцию-репликатор всех элементов списка

replicate(List, N) -> replicate(List, N, N).
replicate([_|T], N, 0) -> replicate(T, N, N);
replicate([H|T], N, Acc) -> [H | replicate([H | T], N, Acc-1 )];
replicate([], _, _) ->[].
