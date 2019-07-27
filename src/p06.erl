-module(p06).
-export([is_palindrome/1]).

%Определить, является ли список палиндромом. Читается в обе стороны (А роза упала на лапу aзора)

reverse([]) -> [];
reverse([H|T]) -> [H|reverse(T)].

is_palindrome([]) -> [];
is_palindrome([List]) -> List =:= reverse(List).
