numero(['1']).
numero(['0']).

numero(L) :-
 eh0ou1(L).

eh0ou1([X|T])
 