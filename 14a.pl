%Write a predicate to test equality of two sets without using the set difference.

%test the equality of two sets
%equality(L1 - list, L2 -list)
%L1 and L2 are the lists for which we have to test the equality
%flow model(i,i)
%
%remove(L - list, E - integer, R - list)
%L - is a list from which we have to remove an element
%E - is the element to be removed
%R - is the resaul list
%flow model(i,i,o)


equality([],[]).
equality([H|T],L2):-
    remove(L2,H,R),
    equality(T,R).


remove([H|T],E,R):-
    H =:= E,
    R=T.

remove([H|T],E,[H|TR]):-
    H =\= E,
    remove(T,E,TR).
