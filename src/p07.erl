-module(p07).
-export([flatten/1]).

%Выровнять структуру с вложенными списками

flatten([[H|T]|T2]) -> flatten([H,T|T2]);
flatten([[]|T]) -> flatten(T);
flatten([H|T]) -> [H|flatten(T)];
flatten([]) -> [].






