vogais(N) :-
 read(X),
 contaVogais(X, R),
 N == R.

vogal(X) :- member(X, [a,e,i,o,u]).

contaVogais([], 0).
contaVogais([H|T], R) :-
 vogal(H),
 contaVogais(T, R1),
 R is R1 + 1,
 !.
contaVogais([_|T], R) :-
 contaVogais(T, R).