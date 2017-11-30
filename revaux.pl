revaux([], A, A).
revaux([X|Y],A,R):-
 revaux(Y, [X|A],R).