comprimento([],0).
comprimento([_|Y],N):-
    comprimento(Y,N1),
    N is N1 + 1.