length([], A, A).
length([_|Y], A, N):-
A1 is A+1,
length(Y, A1, N).