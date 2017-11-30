lenaux([], A, A).
lenaux([_|Y], A, N):-
A1 is A+1,
lenaux(Y, A1, N).