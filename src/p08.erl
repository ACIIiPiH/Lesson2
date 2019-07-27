-module(p08).
-export([compress/1]).

%Удалить последовательно следующие дубликаты

compress([]) -> [];
compress([H | []]) -> [H];
compress([H,H | T]) -> compress([H |T]);
compress([H | T]) -> [H | compress(T)].
