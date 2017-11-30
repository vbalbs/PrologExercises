palavras(N) :-
 get_char(X),
 verificafimespaco(X, N).

verificafimespaco('\n', 0) :- 
 !.
verificafimespaco(' ', N) :- 
 !,
 palavras(N).

verificafimespaco(_, N) :-
 delimitador(X),
 trata(X, N1),
 N is N1 + 1.

delimitador(X) :-
 get_char(X1),
 trata(X1, X).

trata('\n', '\n') :- !.
trata(' ', ' ') :- !.
trata(_, N) :- 
 delimitador(N).