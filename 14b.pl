%Write a predicate to select the n-th element of a given list

%select the n-th element from a list
%get_elem(L-list, pos-int, R-int)
%L - list in which search the element
%pos - position from we want the element
%R - the result element
%flow models (i,i,o),(i,i,i)

get_elem([],_,-1).
get_elem([H|_],Pos,R):-
    Pos=:=1,
    R is H.

get_elem([_|T],Pos,R):-
    Pos =\= 1,
    Pos1 is Pos - 1,
    get_elem(T,Pos1,R1),
    R is R1.
