element_at(X,[X|_],1).
element_at(X,[_|L],K) :- 
 K > 1, 
 K1 is K - 1, 
 element_at(X,L,K1).