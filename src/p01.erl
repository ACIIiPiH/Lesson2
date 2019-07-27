-module(p01).
-export([last/1]).

% Найти последний элемент списка

last([])-[];
last ([H|[]]) -> H;
last([_|T]) -> last(T).
