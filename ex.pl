# pega(N,X,Y) : Y é uma lista com os N primeiros elementos da lista X.
pega(N, _, Xs) :-
  N =< 0,
  !,
  N =:= 0,
  Xs = [].
pega(_, [], []).
pega(N, [X|Xs], [X|Ys]) :-
  M is N-1,
  take(M, Xs, Ys).

# rem(A,X,Y) : Y é a mesma lista que X tirando A.
rem(A,X,Y) :-
  delete(A,X,Y)

rem(A, [A|B], B).
rem(A, [B, C|D], [B|E]) :-
  rem(A, [C|D], E).

# remTodos(A,X,Y) : Y é a mesma lista que X tirando todos A.
remTodos(_, [], []).
remTodos(X, [H|L1], [H|L2]):-
    X\==H,
    remTodos(X,L1,L2),
    X\==H.
remTodos(X, [X|L1], L2):-
    remTodos(X,L1,L2).

# quebraNoMeio(X,X1,X2) :X1 e X2 sao a metade esquerda e direita de X. Se X é impar, X1 > X2.
quebraNoMeio(Xs, Ys, Zs) :-
   length(Xs, N),
   H is N - N // 2,
   length(Ys, H),
   append(Ys, Zs, Xs).

# intercala(X, X1, X2) : listas ordenadas X1 e X2
intercala([A,B|X], [A|X1], [B|X2]) :-
    !, m2(X, X1, X2).
intercala(X1, X1, []) :- !.
intercala(X2, [], X2).

# ordenaInterc(X,Y) : Y é X ordenado
ordenaInterc([],[]).
ordenaInterc([A,B],[A,B]) :- A > B
ordenaInterc([A,B],[A,B]) :- A == B
ordenaInterc([A,B],[B,A]) :- B > A
ordenaInterc(X,Y) :-
  quebraNoMeio(X, X1, X2),
  ordenaInterc(X1, Y1),
  ordenaInterc(X2, Y2),
  intercala(Y, Y1, Y2).

# intersec(X,Y,Z) : Z é a intersecao de X e Y
intersec([], _, []).
intersec(_, [], []).
intersec([H1|T1], L2, [H1|Zs]) :-
    member(H1, L2),
    intersec(T1, L2, Zs).
intersec([_|T1], L2, Z) :-
    intersec(T1, L2, Z)
