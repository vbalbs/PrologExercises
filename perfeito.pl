perfeito(N) :-
 C is N - 1,
 somarDivisores(N, C, S),
 N == S.

somarDivisores(_,0,0).
somarDivisores(0,_,0).

somarDivisores(N, C, S) :-
 N > 1,
 C > 0,
 0 =:= N mod C,
 C1 is C - 1,
 somarDivisores(N, C1, S1), 
 S is S1 + C.

somarDivisores(N, C, S) :-
 C1 is C - 1,
 somarDivisores(N, C1, S).