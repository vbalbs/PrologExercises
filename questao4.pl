series([], _, []).
series([serie(Nome, Ai, Af)|L], A, [Nome|S]) :-
    Ai =< A,
    A =< Af,
    !,
    series(L, A, S).
series([_|L], A, S) :-
    series(L, A, S).


	