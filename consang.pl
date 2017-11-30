f(b, a).
f(b, c).
f(c, d).
f(c, f).
f(e, c).
f(g, f).
f(h, g).
f(h, i).

f(A,B) :-
 f(B,A).
consang(X,X).

consang(C,D) :-
 f(A,C),
 consang(A, D).