dentro(P) :-
 member(P, [1,2,3,4]).

conta([], 0, 0).
conta(X, D, F) :-
 dentro(X),
 D = 1,
 F = 0.

conta(_, 0, 1).

conta([H|T], D, F) :-
 conta(H, D1, F1),
 conta(T, D2, F2),
 D is D1 + D2,
 F is F1 + F2.